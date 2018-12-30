

var vm = avalon.define({
	$id:'publishcontent',
	id : getUrlData('id'),
	submited:false,
	publish:{id:'',name:'',phone:'',address:'',content:'',categoryId:'',imageUrl:''},
	
	absoluteUrl:[],
	relativeUrl:[],
	tempUrl:'',
	imgUrl:'',
	categoryList:[],
	
	getPublish:function()
	{
		if(vm.id){
			$.ajax({
    		    url: "../../../publish/doGetById",    //请求的url地址
    		    dataType: "json",   //返回格式为json
    		    data: {id:vm.id},    //参数值
    		    type: "post",   //请求方式
    		    success: function(res) {
    		    	if (res.status == 100) {
    		    		vm.publish = res.data;
    		    		
                        if(vm.publish.imageUrl){
                            vm.relativeUrl = vm.publish.imageUrl.split(',');
                        }
                        if(vm.publish.showUrl){
                            vm.absoluteUrl = vm.publish.showUrl.split(',');
                        }
                    }else{
                    	alert(res.data);
                    }
    		    },
    		    error: function() {
    		    	console.log('error');
    		    }
    		});
		}else{
			vm.publish = {id:'',name:'',phone:'',address:'',content:'',categoryId:'',imageUrl:''};
		}
	},
	onAdd:function()
	{
		vm.submited = true;
		
		if(vm.publish.name == ''){
			alert('联系人不能为空！');
			return false;
		}
		if(vm.publish.phone == ''){
			alert('联系电话不能为空！');
			return false;
		}
		var regExpP = /^1[345789]\d{9}$/; //手机号

	    if (!regExpP.test(vm.publish.phone)) { //test检测$('#user_phone').val()是否符合regExp格式
	    	alert("手机号格式不对！");
	        return ;
	    }
	    if(vm.publish.address == ''){
			alert('联系地址不能为空！');
			return false;
		}
		vm.publish.imageUrl = '';
        for(var i=0; i<vm.relativeUrl.length; i++){

            if(i == vm.relativeUrl.length-1){
                vm.publish.imageUrl = vm.publish.imageUrl + vm.relativeUrl[i];
            }else{
                vm.publish.imageUrl = vm.publish.imageUrl + vm.relativeUrl[i] + ",";
            }
        }
        
		if(vm.id){
			$.ajax({
    		    url: "../../../publish/doUpdate",    //请求的url地址
    		    dataType: "json",   //返回格式为json
    		    data: param({publish: vm.publish}),    //参数值
    		    type: "post",   //请求方式
    		    success: function(res) {
    		    	if (res.status == 100) {
    		    		vm.submited = false;
    		    		alert('发布成功');
    		    		window.location.href = '#/carousel/list';
                    }else{
                    	alert(res.data);
                    }
    		    },
    		    error: function() {
    		    	console.log('error');
    		    }
    		});
		}else{
			$.ajax({
    		    url: "../../../publish/doAdd",    //请求的url地址
    		    dataType: "json",   //返回格式为json
    		    data: param({publish: vm.publish}),    //参数值
    		    type: "post",   //请求方式
    		    success: function(res) {
    		    	if (res.status == 100) {
    		    		vm.submited = false;
    		    		window.location.href = '#/carousel/list';
                    }else{
                    	alert(res.data);
                    }
    		    },
    		    error: function() {
    		    	console.log('error');
    		    }
    		});
		}
	},
	getCategoryList:function(){
		$.ajax({
		    url: "../../../carousel/doGetParent",    //请求的url地址
		    dataType: "json",   //返回格式为json
		    data: {},    //参数值
		    type: "post",   //请求方式
		    success: function(res) {
		    	if (res.status == 100) {
		    		vm.categoryList = res.data;
		    		vm.publish.categoryId = vm.categoryList[0].id;
                }else{
                	alert(res.data);
                }
		    },
		    error: function() {
		    	console.log('error');
		    }
		});
	},
	
	remove:function (index) {
        vm.absoluteUrl.splice(index, 1);
        vm.relativeUrl.splice(index, 1);
    },
    removeInput:function(name){
    	vm.publish[name] = '';
    },
	goback:function()
	{
		window.location.href = '#/carousel/list';
	},
	init:function()
	{
		
	}
	
});

var upLoadImg = function(){
    $.ajaxFileUpload({
        url:'/link/fileupload/uploadImg',
        secureuri:false,
        fileElementId:'fileToUpload',
        dataType:'json',
        data:{},
        success:function(data, status){
            //var obj = jQuery.parseJSON(data);
            vm.imgUrl = data.absolute;
            vm.absoluteUrl.push(data.absolute);
            vm.relativeUrl.push(data.relative);
            console.log(123);
        },
        error:function(data, status, e){

        }
    });
    console.log(document.getElementById("fileToUpload").value);
    $("#fileToUpload").remove();
    var input = " <input  id=\"fileToUpload\" type=\"file\" name=\"imgFile\" onchange=\"upLoadImg()\" />";
    $("#myupload").append(input);
};
vm.getPublish();
vm.getCategoryList();
avalon.scan();