<%-- 
    Document   : initial
    Created on : 2020-1-7, 8:46:14
    Author     : 25224
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>慕课网初始页面</title>
		<link rel="stylesheet" href="css/header.css"/>
		<link rel="stylesheet" href="css/content.css"/>
		<link rel="stylesheet" href="css/footer.css"/>
		<script src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/initial/header.js"></script>
		<script type="text/javascript" src="js/initial/topnav.js"></script>

	</head>
	<body>
		<!-- 1.设置头部导航条 -->
		<header>
			<!-- 1.1 logo图片 -->
			<img src="img/header/logo.png" >
			<!-- 1.2  导航条的内容 -->
			<ul>
				<li>免费课程</li>
				<li>实战课程</li>
				<li>就业班</li>
				<li>专栏</li>
				<li>猿问</li>
				<li>手记</li>
			</ul>
			<img src="img/header/new.png" id="littleicon">
			<!-- 1.3搜索框 -->
			<div class="search">
				<div class="search-area">
					<div class="search-area-inner">
						<input type="text" name="innerText" id="innerText" value="" placeholder="请输入关键字..."/>
						<div class="search-key">
							<a href="#">vue</a>
							<a href="#">Python</a>
						</div>
					</div>
					<i id="search-icon">
						<img src="img/header/search.png" >
					</i>
				</div>
			</div>
			<!-- 1.4导航条右半部分 -->
			<div class="right">
				<div id="download">下载APP</div>
				<div class="shoppingcart">
					<span id="cartimg"></span>
					<span id="text">购物车</span>
				</div>
				<div class="user-server">
					<a href="regest.jsp?data=1" id="userlog">登录</a>
					/
					<a href="regest.jsp?data=2" id="userregest">注册</a>
				</div>
			</div>
			<!-- 1.5弹出框 -->
			<div id="appdown"></div>
			<div id="shoppingshow"></div>
		</header>
		<!-- 2.设置无延迟导航条以及轮播图 -->
		<div class="top-nav">
			<!-- 2.1左半部分的无延迟导航条 -->
			<div class="top-nav-left">
				<!-- 第一个 div-->
				<div class="leftnavcontent">
					<div class="brief"><span>前沿 / 区块链 / 人工智能</span></div>
				</div>
				<img src="img/top-nav/箭头%20三角形.png" class="arrow">
				<!-- 第二个div -->
				<div class="leftnavcontent">
					<div class="brief"><span>前端 / 小程序 / JS</span></div>
				</div>
				<img src="img/top-nav/箭头%20三角形.png" class="arrow">
				<div></div>
				<!-- 第三个div -->
				<div class="leftnavcontent">
					<div class="brief"><span>后端 / JAVA / Python</span></div>
				</div>
				<img src="img/top-nav/箭头%20三角形.png" class="arrow">
				<div></div>
				<!-- 第四个div -->
				<div class="leftnavcontent">
					<div class="brief"><span>移动 / Android / IOS</span></div>
				</div>
				<img src="img/top-nav/箭头%20三角形.png" class="arrow">
				<div ></div>
				<!-- 第五个div -->
				<div class="leftnavcontent">
					<div class="brief"><span>云计算 / 大数据 / 容器</span></div>
				</div>
				<img src="img/top-nav/箭头%20三角形.png" class="arrow">
				<div></div>
				<!-- 第六个div -->
				<div class="leftnavcontent">
					<div class="brief"><span>运维 / 测试 / 数据库</span></div>
				</div>
				<img src="img/top-nav/箭头%20三角形.png" class="arrow">
				<div></div>
				<!-- 第七个div -->
				<div class="leftnavcontent">
					<div class="brief"><span>UI设计 / 3D动画 / 游戏</span></div>
				</div>
				<img src="img/top-nav/箭头%20三角形.png" class="arrow">
				<div></div>
			</div>
			<!-- 2.2右半部分的轮播图 -->
			<div class="top-nav-right">
				<!-- 五张图片 -->
				<ul class="imgList">
					<li><img src="img/top-nav/1.png" ></li>
					<li><img src="img/top-nav/2.png" ></li>
					<li><img src="img/top-nav/3.png" ></li>
					<li><img src="img/top-nav/4.png" ></li>
					<li><img src="img/top-nav/5.png" ></li>
				</ul>
				<!-- 两个按钮 -->
				<a href="" id="leftBtn">
					<img src="img/top-nav/返回.png" >
				</a>
				<a href="" id="rightBtn">
					<img src="img/top-nav/更多.png" >
				</a>
				<!-- 五个小点 -->
				<div id="dot">
					<a href="" class="current"></a>
					<a href=""></a>
					<a href=""></a>
					<a href=""></a>
					<a href=""></a>
				</div>
				
				<!-- 2.3左边的无延迟菜单栏的隐藏部分，当点击菜单栏的相应部分就显示对应的细节    总共7个-->
				<div class="detail">
					<div id="detail-top">
						<div class="top_title"><span>前沿技术</span></div>
						<div class="top_item">
							<a href="#">微服务</a> 
							<a href="#">区块链 </a>
							<a href="#">以太坊</a>
							<a href="#">机器学习</a>
							<a href="#">深度学习</a>
							<a href="#">计算机视觉</a>
							<a href="#">自然语言处理</a>
							<a href="#">数据分析&amp;挖掘</a>
						</div>
					</div>
					<div id="detail-bottom"></div> 
				</div>
				
				<div class="detail">
					<div id="detail-top">
						<div class="top_title"><span>前端开发</span></div>
						<div class="top_item">
							<a href="#">HTML/CSS JavaScript</a>
							<a href="#">Vue.js</a>
							<a href="#">React.JS</a>
							<a href="#">Angular</a>
							<a href="#">Node.js</a>
							<a href="#">jQuery</a>
							<a href="#">Bootstrap</a>
							<a href="#">Sass/Less</a>
							<a href="#">WebApp</a>
							<a href="#">小程序</a>
							<a href="#">前端工具</a>
							<a href="#">CSS</a>
							<a href="#">Html5</a>
							<a href="#">CSS3</a>
						</div>
					</div>
					<div id="detail-bottom">
						
					</div>
				</div>
				
				<div class="detail">
					<div id="detail-top">
						<div class="top_title"><span>后端开发</span></div>
						<div class="top_item">
							<a href="#">Java</a>
							<a href="#">SpringBoot</a>
							<a href="#">Spring</a>
							<a href="#">Cloud</a>
							<a href="#">Python</a>
							<a href="#">爬虫</a>
							<a href="#">Django</a>
							<a href="#">Tornado</a>
							<a href="#">Go</a>
							<a href="#">PHP</a>
							<a href="#">C</a>
							<a href="#">C++</a>
							<a href="#">C#</a>
							<a href="#">Ruby</a>
						</div>
					</div>
					<div id="detail-bottom"></div>
				</div>
				
				<div class="detail">
					<div id="detail-top">
						<div class="top_title"><span>移动开发</span></div>
						<div class="top_item">
							<a href="#">Android</a>
							<a href="#">iOS</a>
							<a href="#">React</a>
							<a href="#">native</a>
							<a href="#">WEEX</a>
						</div>
					</div>
					<div id="detail-bottom"></div>
				</div>
				
				<div class="detail">
					<div id="detail-top">
						<div class="top_title"><span>计算机基础</span></div>
						<div class="top_item">
							<a href="#">计算机网络</a>
							<a href="#">算法与数据结构</a>
							<a href="#">数学</a>
						</div>
						<div class="top_title"><span>云计算&amp;大数据</span></div>
						<div class="top_item">
							<a href="#">大数据</a>
							<a href="#">Hadoop</a>
							<a href="#">Spark</a>
							<a href="#">Hbase</a>
							<a href="#">Storm</a>
							<a href="#">云计算</a>
							<a href="#">AWS</a>
							<a href="#">Docker</a>
							<a href="#">Kubernetes</a>
						</div>  
					</div>
					<div id="detail-bottom"></div>
				</div>
				
				<div class="detail">
					<div id="detail-top">
						<div class="top_title"><span>运维&amp;测试</span></div>
						<div class="top_item">
							<a href="#">运维</a>
							<a href="#">自动化运维</a>
							<a href="#">运维工具 </a>
							<a href="#">中间件</a>
							<a href="#">Linux</a>
							<a href="#">测试</a>
							<a href="#">功能测试</a>
							<a href="#">性能测试</a>
							<a href="#">自动化测试</a>
							<a href="#">接口测试</a>
							<a href="#">安全测试</a>
						</div>
						<div class="top_title"><span>数据库</span></div>
						<div class="top_item">
							<a href="#">MySQL</a>
							<a href="#">Redis</a>
							<a href="#">MongoDB</a>
							<a href="#">Oracle</a>
							<a href="#">SQL</a>
							<a href="#">Server</a>
							<a href="#">NoSql</a>
							<a href="#"></a>
						</div>
					</div>
					<div id="detail-bottom"></div>
				</div>
				
				<div class="detail">
					<div id="detail-top">
						<div class="top_title"><span>UI设计&amp;多媒体</span></div>
						<div class="top_item">
							<a href="#">模型制作</a>
							<a href="#">动效动画</a>
							<a href="#">设计基础</a>
							<a href="#">设计工具</a>
							<a href="#">APPUI设计</a>
							<a href="#">产品交互</a>
						</div>
						<div class="top_title"><span>游戏</span></div>
						<div class="top_item">
							<a href="#">Unity</a>
							<a href="#">3D</a>
							<a href="#">Cocos2d-x</a>
						</div>
					</div>
					<div id="detail-bottom"></div>
				</div>
				
				
				
			</div>
		</div>
		<!-- 内容的第一条
		<div class="one"></div>
		内容的第二条 -->
		<div class="two"></div>
		<div class="three">
			<div id="">
				<!-- 新人好课 -->
			</div>
			<div class="">
				<!-- 第一排新课 -->
			</div>
			<div class="">
				<!-- 第二排新课 -->
			</div>
		</div>
		<div class="four">
			<div id="">
				<!-- 学习路线 -->
			</div>
			<div class="">
				<!-- 第一行 -->
			</div>
			<div class="">
				<!-- 第二行 -->
			</div>
			<div class="">
				<!-- 第三行 -->
			</div>
		</div>
		<div class="five">
			<div id="">
				<!-- 热门课程 -->
			</div>
			<div class="">
				<!-- 第一行 -->
			</div>
			<div class="">
				<!-- 第二行 -->
			</div>
		</div>
		<div class="six">
			<div id="">
				<!-- 慕课专栏 -->
			</div>
			<div class="">
				<!-- 第一行 -->
			</div>
			<div class="">
				<!-- 第二行 -->
			</div>
		</div>
		<footer></footer>
	</body>
</html>

