

var vm = avalon.define({
	$id:'search',
	submited:false,
	publish:{id:'',name:'',phone:'',address:'',content:'',firstCategory:'', secCategory:'',imageUrl:''},
	showPositionList:[{id:1,name:'首页顶部轮播图'}],
	absoluteUrl:[],
	relativeUrl:[],
	tempUrl:'',
	imgUrl:'',
	categoryList:[],
	publishList:[],
	
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
    		    			if(i == 0){
    		    				vm.categoryList[i].isSelected = true;
    		    			}else{
    		    				vm.categoryList[i].isSelected = false;
    		    			}
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
vm.getCategory();

//vm.searchPublish(1, 10);
avalon.scan();