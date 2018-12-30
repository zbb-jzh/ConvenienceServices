

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
	publishList:[],
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
	searchPublish:function(pageNumber, pageSize){
		$.ajax({
		    url: "../../../publish/doPage",    //请求的url地址
		    dataType: "json",   //返回格式为json
		    data: {pageNumber: pageNumber, pageSize: pageSize, content:'',categoryId:''},    //参数值
		    type: "post",   //请求方式
		    success: function(res) {
		    	if (res.status == 100) {
		    		vm.publishList = res.data.list;
		    		for(var i=0; i<vm.publishList.length; i++){
                        if(vm.publishList[i].showUrl != undefined){
                            vm.publishList[i].showUrl = vm.publishList[i].showUrl.split(',')[0];
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
	
});
vm.getAdList();
vm.getCategory();

//vm.searchPublish(1, 10);
avalon.scan();