/**
 * 
 */

var vm = avalon.define({
	$id:'consumerwithdraw',
	/*consumerId:getUrlData('id'),*/
	consumer:{id:'',name:'',bankAccountName:'',bankName:'',bankAddress:'',bankCard:'',userName:'',prizeCoin:'0'},
	withdrawCount:'',
	consumerwithdraw:{consumerId:'',consumerName:'',bankAccountName:'',bankName:'',bankAddress:'',bankCard:'',userName:'',prizeCoin:'0',withdrawCount:''},
	submited:false,
	isUpdate:false,
	getConsumer:function()
	{
		
			vm.isUpdate = true;
			$.ajax({
			    url: "../../../consumer/doGetByUser",    //请求的url地址
			    dataType: "json",   //返回格式为json
			    data: {},    //参数值
			    type: "post",   //请求方式
			    success: function(res) {
			    	if (res.status == 1) {
			    		vm.consumer = res.data;
	                }else if(res.status == -110){
	                	window.location.href = "../login/login.html";
	                }else if(res.status == -114){
	                	window.location.href = "../checkpwd/check_pwd.html";
	                }
			    },
			    error: function() {
			    	console.log('error');
			    }
			});
	},
	add:function()
	{
		if(vm.withdrawCount == 0){
			alert('提现额度需大于0并且是100的倍数');
			return;
		}
		if(parseFloat(vm.withdrawCount) > parseFloat(vm.consumer.prizeCoin)){
			alert('提现超过余额');
			return;
		}
		if(parseFloat(vm.withdrawCount) % 100 != 0){
			alert('提现额度需是100的倍数');
			return;
		}
		$("#submitButton").attr("disabled", true);
		vm.consumerwithdraw.consumerId = vm.consumer.id;
		vm.consumerwithdraw.consumerName = vm.consumer.name;
		vm.consumerwithdraw.bankAccountName = vm.consumer.bankAccountName;
		vm.consumerwithdraw.bankName = vm.consumer.bankName;
		vm.consumerwithdraw.bankAddress = vm.consumer.bankAddress;
		vm.consumerwithdraw.bankCard = vm.consumer.bankCard;
		vm.consumerwithdraw.userName = vm.consumer.userName;
		vm.consumerwithdraw.prizeCoin = vm.consumer.prizeCoin;
		vm.consumerwithdraw.withdrawCount = vm.withdrawCount;
			$.ajax({
			    url: "../../../consumer/doAddWithDraw",    //请求的url地址
			    dataType: "json",   //返回格式为json
			    data: param({withdraw: vm.consumerwithdraw}),    //参数值
			    type: "post",   //请求方式
			    success: function(res) {
			    	if (res.status == 1) {
			    		console.log('sucess');
			    		alert('提现成功');
			    		$("#submitButton").attr("disabled", false);
			    		vm.getConsumer();
			    		//vm.goback();
	                }else{
	                	alert(res.data);
	                }
			    },
			    error: function() {
			    	console.log('error');
			    }
			});
	},
	removeInput:function(){
		vm.withdrawCount = '';
	},
	goback:function()
	{
		window.location.href = '#/consumer/list';
	}
});

vm.getConsumer();
avalon.scan();