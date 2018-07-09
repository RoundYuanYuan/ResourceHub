<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/index.css">
<title>
	资源库
</title>
    <link rel="stylesheet" href="edusharing/public.css">
    <link rel="stylesheet" href="edusharing/list_shiti.css">
    <link rel="stylesheet" href="edusharing/0910.css" id="layui_layer_skin0910css" style="">
    
 </head>
</head>
<body>


<!-- header_start -->
<div class="header clearfix">
    <div class="logo fl">
        <a href="login.html" target="_blank">
            <img src="edusharing/logo.png"></a>
    </div>
    <div class="search fl clearfix">
        <div class="select_box">
            <div class="select_showbox" style="cursor: pointer;"><span id="curType">资源搜索</span><i class="iconfont"></i></div>

        </div>
        <form action="sourceonelist" method="post">
        <input id="txtKeyWords" class="searcha fl" name="keyboard" placeholder="请输入搜索内容" type="text">
        <input id="btnSearch" class="searchb fhl iconfont"   value="搜索" type="submit">
        </form>
    </div>

</div>



    <div class="shiti_top wrap">
        <div class="position">
            <span>您的位置：</span>
            <a href="login.html" target="_blank">首页</a>>
           资源库
        </div>















  <div class="news">
    <div class="news-title"></div>
    <div class="news-content">
 
        <div class="news-inner">
            <div class="news-clip"></div>
            <div class="news-clip"></div>
            <div class="news-clip"></div>
            <div class="news-clip"></div>
             <s:iterator value="sourcelist" var="source">
            <div class="news-list">

                <div class="news-message"  onclick="window.open('queryFileOneAction?source.sourceId=<s:property value="sourceId"></s:property>')" >
                      <div class="news-name"><s:property value="sourceName"></s:property>
                            <div class="news-date"><s:property value="sourceGrade"></s:property></div>
                      </div>
                    <div class="news-description"><s:property value="sourceDescrib"></s:property></div>
                </div>
                
                <div class="news-border"></div>
            </div>
               </s:iterator> 
        </div>
    </div>
</div>
  
  
  

  

















             </ul>
            </div>

 <div class="pager clearfix">
 <div id="aspnetpager1" class="paginator" wrap="True" style="border-style:None;height:25px;width:100%;">
 	 <a disabled="disabled" style="margin-right:5px;" href='<s:url action="/sourceQuery/sourceoneuserid2one2direc3" namespace="/"><s:param name="currentPage" value="1"></s:param></s:url>'>首页</a>
 	 <a disabled="disabled" style="margin-right:5px;" href='<s:url action="/sourceQuery/sourceoneuserid2one2direc3" namespace="/"><s:param name="currentPage" value="%{currentPage-1}"></s:param></s:url>'>上一页, </a>
	<span class="cpb" style="margin-right:5px;"><s:property value="currentPage"/></span>
	<a disabled="disabled" style="margin-right:5px;" href='<s:url action="/sourceQuery/sourceoneuserid2one2direc3" namespace="/"><s:param name="currentPage" value="%{currentPage+1}"></s:param></s:url>'>下一页</a>
	<a disabled="disabled" style="margin-right:5px;" href='<s:url action="/sourceQuery/sourceoneuserid2one2direc3" namespace="/"><s:param name="currentPage" value="%{currentPage+1}"></s:param></s:url>'>末页</a>
</div>

           </div>
        </div>
        <div class="content_right fr"> </div>
        </div>
        
            

</body> 
 <script type="text/javascript">
    $(".jia").click(function () {
        $(this).hide();
        $(this).parent().parent().find(".list3").show();
        $(this).parent().find(".jian").show();
    });
    $(".jian").click(function () {
        $(this).hide();
        $(this).parent().parent().find(".list3").hide();
        $(this).parent().find(".jia").show();
    });
</script> 
    
  <script src="js/jquery-3.2.1.min.js"></script>
<script src="js/jquery.transit.js"></script>
<script src="js/index.js"></script>
  
  
  
  
  
  
  
  
  
  
</html>