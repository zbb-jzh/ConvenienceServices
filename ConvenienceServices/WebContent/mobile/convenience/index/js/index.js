

var vm = avalon.define({
	$id:'index',
	submited:false,
	publish:{id:'',name:'',phone:'',address:'',content:'',firstCategory:'', secCategory:'',imageUrl:''},
	showPositionList:[{id:1,name:'首页顶部轮播图'}],
	absoluteUrl:[],
	relativeUrl:[],
	tempUrl:'',
	imgUrl:'',
	categoryList:[],
	adList:[],
	
	getAdList:function(){
		$.ajax({
		    url: "../../../carousel/doGetAdList",    //请求的url地址
		    dataType: "json",   //返回格式为json
		    data: {position:1},    //参数值
		    type: "post",   //请求方式
		    success: function(res) {
		    	if (res.status == 100) {
		    		vm.adList = res.data;
		    		
		    		for(var i=0; i<vm.adList.length; i++){
                        if(vm.adList[i].showUrl != undefined){
                            vm.adList[i].showUrl = vm.adList[i].showUrl.split(',')[0];
                        }
                    }
                }else{
                	alert(res.data);
                }
		    },
		    error: function() {
		    	console.log('error');
		    }
		});
	},
	getCategory:function()
	{
		
			$.ajax({
    		    url: "../../../carousel/doGetParent",    //请求的url地址
    		    dataType: "json",   //返回格式为json
    		    data: {},    //参数值
    		    type: "post",   //请求方式
    		    success: function(res) {
    		    	if (res.status == 100) {
    		    		vm.categoryList = res.data;
    		    		
    		    		for(var i=0; i<vm.categoryList.length; i++){
                            if(vm.categoryList[i].showUrl != undefined){
                                vm.categoryList[i].showUrl = vm.categoryList[i].showUrl.split(',')[0];
                            }
                        }
                    }else{
                    	alert(res.data);
                    }
    		    },
    		    error: function() {
    		    	console.log('error');
    		    }
    		});
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
vm.getAdList();
vm.getCategory();
avalon.scan();