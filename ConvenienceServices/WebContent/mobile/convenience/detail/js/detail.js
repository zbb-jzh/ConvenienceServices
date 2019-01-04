

var vm = avalon.define({
	$id:'detail',
	id:getUrlData('id'),
	submited:false,
	publish:{id:'',name:'',phone:'',address:'',content:'', categoryId:'',imageUrl:''},
	showUrl:[],
	categoryList:[],
	getPublish:function(){
		$.ajax({
		    url: "../../../publish/doGetById",    //请求的url地址
		    dataType: "json",   //返回格式为json
		    data: {id:vm.id},    //参数值
		    type: "post",   //请求方式
		    success: function(res) {
		    	if (res.status == 100) {
		    		vm.publish = res.data;
		    		vm.showUrl = vm.publish.showUrl.split(',');
		    		
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
vm.getPublish();

avalon.scan();