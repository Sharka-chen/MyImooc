$(function(){
	
	// 1.根据上个页面传过来的参数确定是登录还是注册页面
	var i=window.location.href.split("=")[1];
	var data = Number(i);
	console.log(typeof(data));
	console.log(data);
	if (data == 1) {
			$("#log").css("display", "block");
			$("#regest").css("display", "none");
			$(".sign-log").css("color", "red");
	} else{
			$("#regest").css("display", "block");
			$("#log").css("display", "none");
			$(".sign-regest").css("color", "red");
	}
	// 2.点击实现tab切换
	$(".sign-log").click(function(){
		$("#log").css("display", "block");
		$("#regest").css("display", "none");
		$(".sign-log").css("color", "red");
		$(".sign-regest").css("color", "#787D82");
	});
	
	$(".sign-regest").click(function(){
		$("#regest").css("display", "block");
		$("#log").css("display", "none");
		$(".sign-regest").css("color", "red");
		$(".sign-log").css("color", "#787D82");
	});
	
	/**3.点击登录按钮传送数据到后台进行数据的校验
	 * 校验之后ajax接收后台传过来的数据在页面做出反应：密码错误显示“密码错误请重新输入”，密码正确实现页面跳转*/
	$("#loging-btn").click(function(){
		$.ajax({
			url:"LogingServlet",
			type:"post",
			datatype:"json",
			data:$("#loging-form").serialize(),
			success:function(result){
				var obj=eval("("+result+")");
				console.log(obj);
				var s = "";
				if(obj == s){
					window.location('account.html');
				}else{
					alert(obj);
					$("#mistake").text(obj);
				}
			}
		})
	});
	
	/**4.点击注册按钮传送数据到后台实现注册功能*/
	$("#regesting-btn").click(function(){
		$.ajax({
			url:"RegestServlet",
			type:"post",
			datatype:"json",
			data:$("#regesting-form").serialize(),
			success:function(result){
				var obj=eval("("+result+")");
				console.log(obj);
				var s = "";
				if(obj == s){
					$(window).attr('location', 'regest.jsp?data=1');
					/**window.location('regest.jsp?data=1');*/
					alert("您可以登陆账户");
				}else{
					$("#tip").text(obj);
					alert(obj);
				}
			}
		})
	});
	
	/**5.实现关闭页面的功能*/
	$("#cross").mouseenter(function(){
		$(this).css("background-position","3px -18px")
	})
	$("#cross").mouseleave(function(){
		$(this).css("background-position","3px 5px")
	})
	$("#cross").click(function(){
		alert("关闭页面");
		/**window.location('initial.jsp');*/
		$(window).attr('location', 'initial.jsp');
	})
})