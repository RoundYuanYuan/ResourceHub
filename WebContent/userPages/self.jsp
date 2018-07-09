<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>个人中心</title>
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

                            <li>
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

<!-- short-->
<div class="services-breadcrumb">
    <div class="inner_breadcrumb">
        <ul class="short_ls">
            <li>
                <a href="index.jsp">首页</a>
                <span>| |</span>
            </li>
            <li><a href="self.jsp">个人中心</a></li>
        </ul>
    </div>
</div>
<!-- //short-->
<div>

<div>
      <ul>
   
      <h5>个人信息</h5>
        <font size="3px" > 
      <li>编号：${user.userId}</li>
      <li></li>
      <li>用户名：${user.userName}</li>
      <li></li>
      <li>用户类型：${user.userType}</li>
      <li></li>
      <li>方向：${user.userDirec}</li></font>
      <a href="SelectUserById?userId=${user.userId}">编辑信息</a>
      </ul>
      </div>
	<a href="../resourceManger/UpFile.jsp">上传资源</a>
</div>
<!--footer -->
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