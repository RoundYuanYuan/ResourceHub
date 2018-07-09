<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>资源分类</title>
	<!-- meta-tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //meta-tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- fonts -->
	<link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	    rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
</head>
<body>
<!-- header -->
<div class="header-top">
	<div class="container">
		<div class="bottom_header_left">
			<p>
				<span class="fa fa-map-marker" aria-hidden="true"></span>山西省 中北大学
			</p>
		</div>
		<div class="bottom_header_right">
			<div class="bottom-social-icons">
			</div>
			<div class="header-top-righ">
			学号：${user.userId}
				<a href="login.jsp">
					<span class="fa fa-sign-out" aria-hidden="true"></span>Login</a>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="clearfix"> </div>
	</div>
</div>
<div class="header">
	<div class="content white">
		<nav class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html">
						<h1>
							<span class="fa fa-leanpub" aria-hidden="true"></span>软件学院
							<label>实训资源分享平台</label>
						</h1>
					</a>
				</div>
				<!--/.navbar-header-->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<nav class="link-effect-2" id="link-effect-2">
						<ul class="nav navbar-nav">
							<li>
								<a href="index.jsp" class="effect-3">首页</a>
							</li>

							<li>
								<a href="index.html" class="effect-3">教师作品</a>
							</li>
							<li>
								<a href="about.html" class="effect-3">学生作品</a>
						</li>
							<li>
								<a href="courses.html" class="effect-3">视频资源</a>
						</li>
							<li>
								<a href="join.html" class="effect-3">文档资源</a>
						</li>
							<li>
								<a href="courses.jsp"  class="effect-3">资源分类
								</a>

							<li >
								<a href="self.jsp">个人中心</a>
						</li>


						</ul>
					</nav>
				</div>
				<!--/.navbar-collapse-->
				<!--/.navbar-->
			</div>
		</nav>
	</div>
</div>
	<!-- banner -->

	<!--//banner -->
	<!-- short-->
	<div class="services-breadcrumb">
		<div class="inner_breadcrumb">
			<ul class="short_ls">
				<li>
					<a href="index.jsp">首页</a>
					<span>| |</span>
				</li>
				<li>资源</li>
			</ul>
		</div>
	</div>
	<!-- //short-->
	<!-- blog -->
	<div class="blog-cource">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					资源分类
				</h3>
				<div class="tittle-style">

				</div>
			</div>
			<div class="blog-info">
				<div class="col-xs-4 blog-grid-img">
					<img src="images/c2.png" class="img-responsive" alt="" />
				</div>
				<div class="col-xs-8 blog-grid-text">
					<h4>Java</h4>
					<p>Java是一种可以撰写跨平台应用软件的面向对象的程序设计语言。Java 技术具有卓越的通用性、高效性、平台移植性和安全性，广泛应用于PC、数据中心、游戏控制台、
						科学超级计算机、移动电话和互联网，同时拥有全球最大的开发者专业社群。</p>
					<a class="button-style" href="join.html">查看</a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="blog-agileinfo blog-info-mdl">
				<div class="col-xs-8 blog-grid-text">
					<h4>大数据</h4>
					<p>大数据(big data,mega data)，或称巨量资料，指的是需要新处理模式才能具有更强的决策力、洞察力和流程优化能力的海量、高增长率和多样化的信息资产。 在维克托·迈尔-舍恩伯格及肯尼斯·库克耶编写的《大数据时代》中大数据指不用随机分析法(抽样调查)这样的捷径，而采用所有数据进行分析处理。
						大数据的5V特点:Volume(大量)、Velocity(高速)、Variety(多样)、Value(价值密度)、Veracity（真实性）。 </p>
					<a class="button-style" href="join.html">查看</a>
				</div>
				<div class="col-xs-4 blog-grid-img blog-img-rght">
					<img src="images/c1.png" class="img-responsive" alt="" />
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="blog-info">
				<div class="col-xs-4 blog-grid-img">
					<img src="images/c3.png" class="img-responsive" alt="" />
				</div>
				<div class="col-xs-8 blog-grid-text">
					<h4>HTML5</h4>
					<p>HTML5赋予网页更好的意义和结构。更加丰富的标签将随着对RDFa的，微数据与微格式等方面的支持，
						构建对程序、对用户都更有价值的数据驱动的Web。用HTML5的优点主要在于，这个技术可以进行跨平台的使用。</p>
					<a class="button-style" href="join.html">查看</a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="blog-agileinfo blog-info-mdl">
				<div class="col-xs-8 blog-grid-text">
					<h4>移动互联网</h4>
					<p>移动互联网，就是将移动通信和互联网二者结合起来，成为一体。是指互联网的技术、平台、商业模式和应用与移动通信技术结合并实践的活动的总称。4G时代的开启以及移动终端设备的凸显必将为移动互
						联网的发展注入巨大的能量，2014年移动互联网产业必将带来前所未有的飞跃。 </p>
					<a class="button-style" href="join.html">查看</a>
				</div>
				<div class="col-xs-4 blog-grid-img blog-img-rght">
					<img src="images/c7.png" class="img-responsive" alt="" />
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="blog-info">
				<div class="col-xs-4 blog-grid-img">
					<img src="images/s99.png" class="img-responsive" alt="" />
				</div>
				<div class="col-xs-8 blog-grid-text">
					<h4>UI</h4>
					<p>UI即User Interface(用户界面)的简称。UI设计是指对软件的人机交互、操作逻辑、界面美观的整体设计。好的UI设计不仅是让软件变得有个性有品位，还要让软件的操作变得舒适简单、自由，充分体现软件的定位和特点。软件设计可分为两个部分:编码设计与UI设计。UI的本意是用户界面，是英文User和 Interface的缩写。从字面上看是用户与界面2个部分组成，但实际上还包括用户与界面之间的交互关系。</p>
					<a class="button-style" href="join.html">查看</a>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="blog-agileinfo blog-info-mdl">
			<div class="col-xs-8 blog-grid-text">
				<h4>SAP</h4>
				<p>SAP即"Systems Applications and Products in Data Processing"。它蕴含两层含义:第一，SAP是公司名称，即SAP公司，它是成立于1972年总部位于德国沃尔多夫市的全球最大的企业管理和协同化电子商务解决方案供应商、全球第三大独立软件供应商;第二，SAP是其ERP(Enterprise-wide Resource Planning)软件名称，它是ERP解决方案的先驱，也是全世界排名第一的ERP软件，可以为各种行业、不同规模的企业提供全面的解决方案。 </p>
				<a class="button-style" href="join.html">查看</a>
			</div>
			<div class="col-xs-4 blog-grid-img blog-img-rght">
				<img src="images/c88.png" class="img-responsive" alt="" />
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="blog-info">
			<div class="col-xs-4 blog-grid-img">
				<img src="images/c9.png" class="img-responsive" alt="" />
			</div>
			<div class="col-xs-8 blog-grid-text">
				<h4>信息安全</h4>
				<p>信息安全是指信息系统(包括硬件、软件、数据、人、物理环境及其基础设施)受到保护，不受偶然的或者恶意的原因而遭到破坏、更改、泄露，系统连续可靠正常地运行，信息服务不中断，最终实现业务连续性。信息安全主要包括以下五方面的内容，即需保证信息的保密性、真实性、完整性、未授权拷贝和所寄生系统的安全性。</p>
				<a class="button-style" href="join.html">查看</a>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	</div>
	<!-- //blog -->

	<!-- footer -->
<div class="footer-copy-right">
	<div class="container">

		<div class="clearfix">
			<p>指导老师：孔祥艳</p>
			<p>队员：</p>
			<p>张梦元 仓伟 谷学禹 任禹陶 刘紫君 卫佩宏</p></div>
	</div>
</div>
</div>
	<!--/footer -->

	<!-- js files -->
	<!-- js -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<!-- bootstrap -->
	<script src="js/bootstrap.js"></script>
	<!-- stats numscroller-js-file -->
	<script src="js/numscroller-1.0.js"></script>
	<!-- //stats numscroller-js-file -->
	<!-- smooth scrolling -->
	<script src="js/SmoothScroll.min.js"></script>
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script>
		$(document).ready(function () {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- smooth scrolling -->
	<!-- //js-files -->

</body>
</html>