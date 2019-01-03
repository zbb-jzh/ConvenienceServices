

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
	content:'',
	search:function(id){
		$.ajax({
		    url: "../../../publish/doPage",    //请求的url地址
		    dataType: "json",   //返回格式为json
		    data: {pageNumber: 1, pageSize: 10, content:vm.content,categoryId:id},    //参数值
		    type: "post",   //请求方式
		    success: function(res) {
		    	if (res.status == 100) {
		    		var publishList = res.data.list;
		    		for(var i=0; i<publishList.length; i++){
                        if(publishList[i].showUrl != undefined){
                            publishList[i].showUrl = publishList[i].showUrl.split(',');
                        }
                    }
		    		vm.setListData(publishList, true);
		    		
		    		
                }else{
                	alert(res.data);
                }
		    },
		    error: function() {
		    	console.log('error');
		    }
		});
	},
	setListData :function (data, isAppend) {
		$('#newsList').html('');
		var listDom=document.getElementById("newsList");
		for (var i = 0; i < data.length; i++) {
			var newObj=data[i];
			
			
		
                var str = '<a href="javascript:;" class="aui-news-item b-line">';
                str += '<h2>' + newObj.title +'</h2>';
                str += '<p>' + newObj.content +'</p>';
                str += '<div class="aui-news-page">';
                 for(var j=0; j<newObj.showUrl.length; j++){
                	 str += '<span>';
                     	str += '<img src="' +newObj.showUrl[j] +'" alt="">';
                 	str += '</span>';
                 }
                str += '</div>';
                str += '<div class="aui-flex">';
                str += '<div class="aui-flex-user">';
                str += '<img src="' + newObj.headUrl +'" alt="">';
                str += '  </div>';
                str += '<div class="aui-flex-box">';
                str += '<span>'+ newObj.userName +'</span>';
                str += '   </div>';
                str += '<div class="aui-flex-box">';
                str += '<button> <i class="icon icon-up"></i>781</button>';
                str += '<button> <i class="icon icon-do"></i>719</button>';
                str += '</div>';
                str += '<div class="aui-card-info aui-card-info-t">';
                str += '<span>';
                str += '<i class="icon icon-plu"></i>198</span>';
                str += '<span><i class="icon icon-zfa"></i></span>';
                str += '</div>';
                str += '</div>';
                str += '</a>';
                
				$('#newsList').append(str);//加在列表的后面,上拉加载
			
		}
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