$(function(){
	// 1.导航条内容的hover事件
	$("header ul li").mouseover(function(){
		$(this).css("opacity", 1).siblings().css("opacity", 0.6)
	})
	$("headerli").mouseout(function(){
		$(this).css("opacity", 0.6)
	})
	
	// 2.导航条右侧hover事件
	$("#download, .shoppingcart, #userlog, #userregest").mouseover(function(){
		$(this).css("color", "red")
	}).mouseout(function(){
		$(this).css("color", "#4D555D")
	})
	
	// 3.导航条弹出内容
	$("#download").mouseenter(function(){
		$("#appdown").css("display", "block")
	 }).mouseleave(function(){
	$("#appdown").css("display", "none")
	})
	
	$(".shoppingcart").mouseenter(function(){
		$("#shoppingshow").css("display", "block")
	 }).mouseleave(function(){
	$("#shoppingshow").css("display", "none")
	})
	
	// 4.导航条登录和注册分别跳转➡js/regest/regest.js
	
	
})