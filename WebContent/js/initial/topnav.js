$(function(){
	
	//左边的无延迟菜单的效果
	
	//1.监听可见菜单(一级菜单)的mouseover事件
	$(".leftnavcontent").mouseover(function(){
		//找到相对应的隐藏菜单(二级菜单),让它显示出来
		var i = $(".leftnavcontent").index(this);
		$(".detail").eq(i).css("display", "block");
	})
	$(".leftnavcontent").mouseleave(function(){
		var i = $(".leftnavcontent").index(this);
		$(".detail").eq(i).css("display", "none");
	})
	
	//2.解决当我鼠标移入一级菜单时,文字部分显示高亮
		$(".brief").mouseover(function(){
			$(this).children("span").addClass("hoverspan");
		//非当前文字恢复初始状态
		$(this).parent(".leftnavcontent").siblings().children(".brief").children("span").removeClass("hoverspan");
		})
		//鼠标移出一级菜单时,文字部分取消高亮,恢复原始状态
		$(".brief").mouseleave(function(){
			$(this).children("span").removeClass("hoverspan");
		})

	
	//右边轮播图效果的实现
	var i = 0;
	changeImg(i);
	function changeImg(i){
		$(".imgList li").eq(i).fadeIn().siblings().fadeOut();
		$("#dot a").eq(i).css("width", "20px").siblings().css("width", "8px");//该图片对应的索引的焦点宽度加长,非该索引的焦点宽度不变		
	}
	var timer =null;
	function autoPlay(){
		timer = setInterval(function(){
			changeImg(i);
			i++;
			if(i===5){//0-4轮回
				i = 0;
			}
		},2000)
	}
	autoPlay();
	
	$(".imgList li").hover(function(){
		//当鼠标移入图片则停止轮播
		clearInterval(timer);
	}, function(){
		//鼠标移出继续轮播
		autoPlay();
	})
	
		//点击做按钮返回上一张图片
	$("#leftBtn").click(function(){
		//先清除定时器,避免自动跳回
		clearInterval(timer);
		i--;//回到上张图片的索引
		if(i === -1){
			i = 4;
		}
		changeImg(i);
		autoPlay();
		return false;//阻止事件的冒泡
	})	
		
		//点击有按钮提前开始下一张图片
	$("#rightBtn").click(function(){
		//先清除定时器,避免自动跳回
		clearInterval(timer);
		i++;//回到上张图片的索引
		if(i === 5){
			i = 0;
		}
		changeImg(i);
		autoPlay();
		return false;//阻止事件的冒泡
	})	
})