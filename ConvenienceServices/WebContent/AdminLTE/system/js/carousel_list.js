


var vm = avalon.define({
	$id:'carouselall',
	totalPageCount:-1,
    currentPage:1,
    count:10,
	name:'',
	carouselList:[],
	status:'',
	hasAdd:false,
	hasDelete:false,
	hasUpdate:false,
	
	getCarouselsList:function(pageNumber, pageSize)
	{
		console.log(999);
        var para = {pageNumber: pageNumber, pageSize: pageSize, name:vm.name,status:vm.status};
		$.ajax({
		    url: "/link/carousel/doPage",    //请求的url地址
		    dataType: "json",   //返回格式为json
		    data: {pageNumber: pageNumber, pageSize: pageSize, name:vm.name,status:vm.status},    //参数值
		    type: "post",   //请求方式
		    success: function(res) {
		    	if (res.status == 100) {
		    		vm.carouselList = res.data.list;
	                
		    		for(var i=0; i<vm.carouselList.length; i++){
                        if(vm.carouselList[i].showUrl != undefined){
                            vm.carouselList[i].showUrl = vm.carouselList[i].showUrl.split(',')[0];
                        }
                    }
		    		
	                var morePageCount = 0;
	                if(res.data.totalPage > 0){
	                    morePageCount = res.data.totalPage - res.data.pageNumber;
	                }

	                if (vm.totalPageCount == -1 || (morePageCount + vm.currentPage) != vm.totalPageCount) {
	                	vm.totalPageCount = morePageCount + vm.currentPage;

	                    var options = {
	                        bootstrapMajorVersion : 3,
	                        currentPage : vm.currentPage,
	                        totalPages : vm.totalPageCount,
	                        onPageClicked : function(e, originalEvent, type, page) {
	                        	vm.currentPage = page;
	                        	vm.getCarouselsList(vm.currentPage, vm.count);
	                        },
	                        onPageChanged : function(event, oldPage, newPage) {
	                        }};
	                    $('.pagination').bootstrapPaginator(options);
	                }
                }
		        
		    },
		    error: function() {
		    	console.log('error');
		    }
		});
	},
	search :function () {
        vm.totalPageCount=-1;
        vm.currentPage=1;
        vm.getCarouselsList(1, vm.count);
    },
    preset : function () {
        vm.name = '';
        vm.status = '';
        vm.getCarouselsList(vm.currentPage, vm.count);
    },
    
    toAU : function (id) {
        window.location = '#/carousel/au?id=' + id;
    },
    changeStatus:function(carousel, status)
    {
    	$.ajax({
		    url: "/link/carousel/changeStatus",    //请求的url地址
		    dataType: "json",   //返回格式为json
		    data: {id:carousel.id, status:status},    //参数值
		    type: "post",   //请求方式
		    success: function(res) {
		    	if (res.status == 100) {
		    		carousel.status = status;
		    		console.log('success');
                }
		    },
		    error: function() {
		    	console.log('error');
		    }
		});
    },
    onDelete:function(id)
    {
    	$.ajax({
		    url: "/link/carousel/doDelete",    //请求的url地址
		    dataType: "json",   //返回格式为json
		    data: {id:id},    //参数值
		    type: "post",   //请求方式
		    success: function(res) {
		    	if (res.status == 100) {
		    		if(vm.carouselList.length == 1){
		    			vm.currentPage = 1;
                        vm.getCarouselsList(1, vm.count);
                    }else{
                        vm.getCarouselsList(vm.currentPage, vm.count);
                    }
                }
		    },
		    error: function() {
		    	console.log('error');
		    }
		});
    }
});
if(btns[0].has){
	vm.hasAdd = true;
}
if(btns[1].has){
	vm.hasDelete = true;
}
console.log(vm.hasDelete);
if(btns[2].has){
	vm.hasUpdate = true;
}
vm.getCarouselsList(1, 10);
avalon.scan();