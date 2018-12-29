

var vm = avalon.define({
	$id:'carouselau',
	id : getUrlData('id'),
	submited:false,
	model:{id:'',name:'',linkedUrl:'',sortNum:1,description:'',showPosition:1, imageUrl:'', status:1},
	showPositionList:[{id:1,name:'首页顶部轮播图'}],
	absoluteUrl:[],
	relativeUrl:[],
	tempUrl:'',
	imgUrl:'',
	
	getCarousel:function()
	{
		if(vm.id){
			$.ajax({
    		    url: "/link/carousel/doGet",    //请求的url地址
    		    dataType: "json",   //返回格式为json
    		    data: {id:vm.id},    //参数值
    		    type: "post",   //请求方式
    		    success: function(res) {
    		    	if (res.status == 100) {
    		    		vm.model = res.data;
    		    		if(editor) {
                            editor.html(vm.model.description);
                        }
                        if(vm.model.imageUrl){
                            vm.relativeUrl = vm.model.imageUrl.split(',');
                        }
                        if(vm.model.showUrl){
                            vm.absoluteUrl = vm.model.showUrl.split(',');
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
			vm.model = {id:'',name:'',linkedUrl:'',sortNum:1,description:'',showPosition:1, imageUrl:'', status:1};
		}
	},
	onAdd:function()
	{
		vm.submited = true;
		
		if(vm.model.name == '' || vm.absoluteUrl.length == 0 || vm.model.sortNum == '' || vm.model.sortNum <= 0 ){
			return;
		}
		vm.model.imageUrl = '';
        for(var i=0; i<vm.relativeUrl.length; i++){

            if(i == vm.relativeUrl.length-1){
                vm.model.imageUrl = vm.model.imageUrl + vm.relativeUrl[i];
            }else{
                vm.model.imageUrl = vm.model.imageUrl + vm.relativeUrl[i] + ",";
            }
        }
        vm.model.description = editor.html();
        
		if(vm.id){
			$.ajax({
    		    url: "/link/carousel/doUpdate",    //请求的url地址
    		    dataType: "json",   //返回格式为json
    		    data: param({advertising: vm.model}),    //参数值
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
		}else{
			$.ajax({
    		    url: "/link/carousel/doAdd",    //请求的url地址
    		    dataType: "json",   //返回格式为json
    		    data: param({advertising: vm.model}),    //参数值
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
	remove :function (index) {
        vm.absoluteUrl.splice(index, 1);
        vm.relativeUrl.splice(index, 1);
    },
	goback:function()
	{
		window.location.href = '#/carousel/list';
	},
	init:function()
	{
		
	}
	
});

var editor = KindEditor.create('textarea[name="content"]', {
    resizeType : 1,
    uploadJson :'http://127.0.0.1:8080/link/fileupload/uploadImg',
    urlType : 'absolute',
    allowFileManager : false,
    allowPreviewEmoticons : false,
    allowImageUpload : true,
    autoHeightMode : true,
    afterCreate : function() {
        this.loadPlugin('autoheight');
    },
    afterBlur : function() {
        this.sync();
    },
    items : [ 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline', 'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright',
        'insertorderedlist', 'insertunorderedlist', '|', 'emoticons', 'link',"image" ]
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
vm.getCarousel();
avalon.scan();