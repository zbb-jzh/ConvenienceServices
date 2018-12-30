


var tagTreeSetting = null;
var tagTree = null;

var vm = avalon.define({
	$id:'goodscategory',
	submited:false,
	goodsCategoryList:[],
	kdyList:[],
	category:{id:'', name:'', parentId:'',iconUrl:''},
	name:'',
	absoluteUrl:[],
	relativeUrl:[],
	tempUrl:'',
	imgUrl:'',
	hasAdd:false,
	hasDelete:false,
	hasUpdate:false,
	doAU:function()
	{
		vm.submited = true;
		if(vm.category.name==""){
			return;
		}
		
		vm.category.iconUrl = '';
        for(var i=0; i<vm.relativeUrl.length; i++){

            if(i == vm.relativeUrl.length-1){
                vm.category.iconUrl = vm.category.iconUrl + vm.relativeUrl[i];
            }else{
                vm.category.iconUrl = vm.category.iconUrl + vm.relativeUrl[i] + ",";
            }
        }
        
		if(vm.category.id){
			
			if(vm.category.id == vm.category.parentId){
                alert('不能选自身为父类');
                return;
            }
			
			$.ajax({
			    url: "/link/category/doUpdate",    //请求的url地址
			    dataType: "json",   //返回格式为json
			    data: param({category: vm.category}),    //参数值
			    type: "post",   //请求方式
			    success: function(res) {
			    	if (res.status == 100) {
			    		console.log('sucess');
			    		vm.initTree();
			    		vm.doGetParent();
			    		vm.doGetKdy();
			    		vm.submited = false;
			    		vm.relativeUrl = [];
			        	vm.absoluteUrl = [];
			    		vm.category = {id:'', name:'', parentId:'',iconUrl:''};
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
			    url: "/link/category/doAdd",    //请求的url地址
			    dataType: "json",   //返回格式为json
			    data: param({category: vm.category}),    //参数值
			    type: "post",   //请求方式
			    success: function(res) {
			    	if (res.status == 100) {
			    		console.log('sucess');
			    		vm.initTree();
			    		vm.doGetParent();
			    		vm.doGetKdy();
			    		vm.submited = false;
			    		vm.relativeUrl = [];
			        	vm.absoluteUrl = [];
			    		vm.category = {id:'', name:'', parentId:'',iconUrl:''};
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
	doDelete:function()
	{
		$.ajax({
		    url: "/link/category/doDelete",    //请求的url地址
		    dataType: "json",   //返回格式为json
		    data: {id:vm.category.id},    //参数值
		    type: "post",   //请求方式
		    success: function(res) {
		    	if (res.status == 100) {
		    		console.log('sucess');
		    		vm.initTree();
		    		vm.doGetParent();
		    		vm.submited = false;
		    		vm.relativeUrl = [];
		        	vm.absoluteUrl = [];
		    		vm.category = {id:'', name:'', parentId:'',iconUrl:''};
                }else{
                	alert(res.data);
                }
		    },
		    error: function() {
		    	console.log('error');
		    }
		});
	},
	toAdd:function()
	{
		vm.relativeUrl = [];
    	vm.absoluteUrl = [];
		vm.category = {id:'', name:'', parentId:'',iconUrl:''};
	},
	init:function()
	{
		tagTreeSetting = {
	            edit: {
	                drag: {
	                    autoExpandTrigger: true,
	                    // prev: dropPrev,
	                    // inner: dropInner,
	                    // next: dropNext
	                },
	                enable: true,
	                showRemoveBtn: false,
	                showRenameBtn: false
	            },
	            data: {
	                simpleData: {
	                    enable: true
	                },
	                key: {
	                    children: "nodes"
	                }
	            },
	            callback: {
	                onClick: vm.tagTreeOnClick,
	                // beforeDrag: beforeDrag,
	                // beforeDrop: beforeDrop,
	                // beforeDragOpen: beforeDragOpen,
	                // onDrag: onDrag,
	                // onDrop: onDrop,
	                // onExpand: onExpand
	            }
	        };
	        vm.initTree();
	        vm.doGetParent();
	},
	tagTreeOnClick : function (e, treeId, treeNode) {
        vm.currentNode = treeNode;
        var parentNode = treeNode.getParentNode();
        if(parentNode){
        	vm.category.parentId = parentNode.id;
        } else {
        	vm.category.parentId = "";
        }
        vm.category.id = treeNode.id;
        vm.category.name = treeNode.name;
        if(treeNode.iconUrl){
            vm.relativeUrl = treeNode.iconUrl.split(',');
        }else{
        	vm.relativeUrl = [];
        }
        if(treeNode.showUrl){
            vm.absoluteUrl = treeNode.showUrl.split(',');
        }else{
        	vm.absoluteUrl = [];
        }
    },
	doGetParent:function()
	{
		$.ajax({
		    url: "/link/category/doGetParent",    //请求的url地址
		    dataType: "json",   //返回格式为json
		    data: {},    //参数值
		    type: "post",   //请求方式
		    success: function(res) {
		    	if (res.status == 100) {
		    		vm.goodsCategoryList = res.data;
                }else{
                	alert(res.data);
                }
		    },
		    error: function() {
		    	console.log('error');
		    }
		});
	},
	initTree:function()
	{
        $.ajax({
		    url: "/link/category/doTree",    //请求的url地址
		    dataType: "json",   //返回格式为json
		    data: {},    //参数值
		    type: "post",   //请求方式
		    success: function(res) {
		    	if (res.status == 100) {
		    		console.log('sucess');
		    		tagTree = $.fn.zTree.init($("#goodsCateory"), tagTreeSetting, res.data);
		    		tagTree.expandAll(true);
		            var nodes = tagTree.getNodes();
		            tagTree.selectNode(nodes[0]);
		            //vm.tagTreeOnClick(null,null,nodes[0]);
                }else{
                	alert(res.data);
                }
		    },
		    error: function() {
		    	console.log('error');
		    }
		});
	},
	remove :function (index) {
        vm.absoluteUrl.splice(index, 1);
        vm.relativeUrl.splice(index, 1);
    },
	doGetKdy:function()
	{
		$.ajax({
		    url: "/link/consumer/doSearch",    //请求的url地址
		    dataType: "json",   //返回格式为json
		    data: {},    //参数值
		    type: "post",   //请求方式
		    success: function(res) {
		    	if (res.status == 1) {
		    		console.log('sucess');
		    		vm.kdyList = res.data;
		    		vm.category.kdyId = vm.kdyList[0].id;
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
vm.init();
//vm.doGetKdy();
avalon.scan();