<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Home</title>
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

				<div class="header-top-righ">
				<a href="login.jsp">
					
					学号：${user.userId}
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
								<li >
									<a href="index.jsp" class="effect-3">首页</a>
								</li>
								<li>
									<a href="index.html" class="effect-3">教师作品</a>
								</li>
								<li>
									<a href="about.html" class="effect-3">学生作品</a>
								</li>
								<li>
									<a href="courses.jsp" class="effect-3">视频资源</a>
								</li>
								<li>
									<a href="join.html" class="effect-3">文档资源</a>
								</li>
								<li>
									<a href="courses.jsp" class="effect-3">资源分类</a>
								</li>
								<li>
									<a href="self.jsp" class="effect-3">个人中心</a>
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
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" class=""></li>
			<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			<li data-target="#myCarousel" data-slide-to="3" class=""></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="container">
					<div class="carousel-caption">

					</div>
				</div>
			</div>
			<div class="item item2">
				<div class="container">
					<div class="carousel-caption">

					</div>
				</div>
			</div>
			<div class="item item3">
				<div class="container">
					<div class="carousel-caption">
					</div>
				</div>
			</div>
			<div class="item item4">
				
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="fa fa-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="fa fa-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
		<!-- The Modal -->
	</div>
	<!--//banner -->
	<!-- about -->
	<div class="banner-bottom-w3l" id="about">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>W</span>elcome
				</h3>
				<div class="tittle-style">

				</div>
			</div>
			<div class="welcome-sub-wthree">
				<div class="col-md-6 banner_bottom_left">
					<h4>中北大学
					</h4>
					<p> 学院为中北大学的二级学院，位于中北大学主校区内。</p>
					<p>中北大学软件学院成立于2003年，在中北大学校内简称十三院，下设省级示范性软件学院（本科）和1个系：
						软件工程系，设有软件工程专业，下设软件开发与测试、企业信息化软件开发与应用、电子商务软件开发
						与应用、物流管理软件开发与应用、安全评估与化工模拟、材料成型仿真技术、机电一体化软件开发与应
						用、汽车信息与管理工程、嵌入式软件、信息处理软件应用等专业方向。</p>
				</div>
				<!-- Stats-->
				<div class="col-md-6 stats-info-agile">


					<div class="clearfix"></div>

							<div class="clearfix"></div>
					</div>
			</div>
				<!-- //Stats -->
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //about -->
	<!-- services -->
	<div class="services">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>平台优点</span>
				</h3>
				<div class="tittle-style">

				</div>
			</div>
			<div class="services-moksrow">
				<div class="col-xs-4 services-grids-w3l">
					<div class="servi-shadow">
						<span class="fa fa-bullhorn icon" aria-hidden="true"></span>
						<h4>提供平台</h4>
						<p>为用户交流学习提供便利</p>
					</div>
				</div>
				<div class="col-xs-4 services-grids-w3l">
					<div class="servi-shadow">
						<span class="fa fa-certificate icon" aria-hidden="true"></span>
						<h4>汇聚精髓</h4>
						<p>优秀的资源海量提供</p>
					</div>
				</div>
				<div class="col-xs-4 services-grids-w3l">
					<div class="servi-shadow">
						<span class="fa fa-book icon" aria-hidden="true"></span>
						<h4>促进成长</h4>
						<p>学生通过此平台吸收知识</p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="services-moksrow">
				<div class="col-xs-4 services-grids-w3l">
					<div class="servi-shadow">
						<span class="fa fa-users icon" aria-hidden="true"></span>
						<h4>加强沟通</h4>
						<p>学生老师交流学习心得</p>
					</div>
				</div>
				<div class="col-xs-4 services-grids-w3l">
					<div class="servi-shadow">
						<span class="fa fa-bus icon" aria-hidden="true"></span>
						<h4>提供便利</h4>
						<p>学生可通过该平台下载相关学习视频</p>
					</div>
				</div>
				<div class="col-xs-4 services-grids-w3l">
					<div class="servi-shadow">
						<span class="fa fa-laptop icon" aria-hidden="true"></span>
						<h4>展示自我</h4>
						<p>学生展示作品，增强信心</p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //services -->
	<!-- news没改 -->
	<div class="news" id="news">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>优秀作品</span>
				</h3>
				<div class="tittle-style">

				</div>
			</div>
			<div class="yaallahaa-news-grids-agile">
				<div class="yaallahaa-news-grid">
					<div class="col-md-6 yaallahaa-news-left">
						<div class="col-xs-6 news-left-img">
							<div class="news-left-text color-event1">
								<h5>20 Dec</h5>
							</div>
						</div>
						<div class="col-xs-6 news-grid-info-bottom-w3ls">
							<div class="news-left-top-text text-color1">
								<a href="#" data-toggle="modal" data-target="#myModal">Integer viverra eleifend neque</a>
							</div>
							<div class="date-grid">
								<div class="admin">
									<a href="#">
										<span class="fa fa-clock-o" aria-hidden="true"></span> 7:00 pm - 9:00 pm</a>
								</div>
								<div class="time">
									<p>
										<span class="fa fa-map-marker" aria-hidden="true"></span> Newyork City, 2589</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="news-grid-info-bottom-w3ls-text">
								<p>Aliquam erat volutpat. Duis vulputate tempus laoreet.</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-6 yaallahaa-news-left">
						<div class="col-xs-6 news-left-img news-left-img1">
							<div class="news-left-text color-event2">
								<h5>27 Dec</h5>
							</div>
						</div>
						<div class="col-xs-6 news-grid-info-bottom-w3ls">
							<div class="news-left-top-text text-color2">
								<a href="#" data-toggle="modal" data-target="#myModal">Integer viverra eleifend neque</a>
							</div>
							<div class="date-grid">
								<div class="admin">
									<a href="#">
										<span class="fa fa-clock-o" aria-hidden="true"></span> 6:00 am - 8:00 am</a>
								</div>
								<div class="time">
									<p>
										<span class="fa fa-map-marker" aria-hidden="true"></span> Newyork City, 1452</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="news-grid-info-bottom-w3ls-text">
								<p>Aliquam erat volutpat. Duis vulputate tempus laoreet.</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="yaallahaa-news-grid">
					<div class="col-md-6 yaallahaa-news-left">
						<div class="col-xs-6 news-left-img news-left-img2">
							<div class="news-left-text color-event3">
								<h5>28 Dec</h5>
							</div>
						</div>
						<div class="col-xs-6 news-grid-info-bottom-w3ls">
							<div class="news-left-top-text text-color3">
								<a href="#" data-toggle="modal" data-target="#myModal">Integer viverra eleifend neque</a>
							</div>
							<div class="date-grid">
								<div class="admin">
									<a href="#">
										<span class="fa fa-clock-o" aria-hidden="true"></span> 10:00 am - 1:00 pm</a>
								</div>
								<div class="time">
									<p>
										<span class="fa fa-map-marker" aria-hidden="true"></span> Newyork City, 7458</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="news-grid-info-bottom-w3ls-text">
								<p>Aliquam erat volutpat. Duis vulputate tempus laoreet.</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-6 yaallahaa-news-left">
						<div class="col-xs-6 news-left-img news-left-img3">
							<div class="news-left-text color-event4">
								<h5>30 Dec</h5>
							</div>
						</div>
						<div class="col-xs-6 news-grid-info-bottom-w3ls">
							<div class="news-left-top-text text-color4">
								<a href="#" data-toggle="modal" data-target="#myModal">Integer viverra eleifend neque</a>
							</div>
							<div class="date-grid">
								<div class="admin">
									<a href="#">
										<span class="fa fa-clock-o" aria-hidden="true"></span> 7:00 pm - 9:00 pm</a>
								</div>
								<div class="time">
									<p>
										<span class="fa fa-map-marker" aria-hidden="true"></span> Newyork City, 786.</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="news-grid-info-bottom-w3ls-text">
								<p>Aliquam erat volutpat. Duis vulputate tempus laoreet.</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	<!-- modal -->
	<div class="modal about-modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Best
						<span>Study</span>
					</h4>
				</div>
				<div class="modal-body">
					<div class="model-img-info">
						<img src="images/e1.jpg" alt="" />
						<p>Duis venenatis, turpis eu bibendum porttitor, sapien quam ultricies tellus, ac rhoncus risus odio eget nunc. Pellentesque
							ac fermentum diam. Integer eu facilisis nunc, a iaculis felis. Pellentesque pellentesque tempor enim, in dapibus turpis
							porttitor quis. Suspendisse ultrices hendrerit massa. Nam id metus id tellus ultrices ullamcorper. Cras tempor massa
							luctus, varius lacus sit amet, blandit lorem. Duis auctor in tortor sed tristique. Proin sed finibus sem</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //modal -->
	<!-- //news -->

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

	<!-- Flexslider-js for-testimonials -->
	<script>
		$(window).load(function () {
			$("#flexiselDemo1").flexisel({
				visibleItems: 1,
				animationSpeed: 1000,
				autoPlay: false,
				autoPlaySpeed: 3000,
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: {
					portrait: {
						changePoint: 480,
						visibleItems: 1
					},
					landscape: {
						changePoint: 640,
						visibleItems: 1
					},
					tablet: {
						changePoint: 768,
						visibleItems: 1
					}
				}
			});

		});
	</script>
	<script src="js/jquery.flexisel.js"></script>
	<!-- //Flexslider-js for-testimonials -->
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