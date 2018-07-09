<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- header -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript"
	src="./CSDN"></script>

<title>JAVA WEB项目开发案例精粹-CSDN下载</title>
<meta content="always" name="referrer">

<meta name="keywords" content="JAVA WEB SSH">
<meta name="author" content="CSDN">
<meta name="Copyright" content="CSDN">
<link rel="stylesheet" href="./CSDN/content_toolbar.css">
<link rel="stylesheet" href="./CSDN/font-awesome.min.css">
<link rel="stylesheet" href="./CSDN/bootstrap.css">
<link rel="stylesheet" href="./CSDN/common.css">


<link rel="stylesheet" href="./CSDN/share_style0_24.css">

</head>

<title>资源库</title>
<link rel="stylesheet" href="edusharing/public.css">
<link rel="stylesheet" href="edusharing/list_shiti.css">
<link rel="stylesheet" href="edusharing/0910.css"
	id="layui_layer_skin0910css" style="">
<!-- meta-tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />

<!-- //meta-tags -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- fonts -->

<link type="text/css" href="./CSDN/nc.css" rel="stylesheet" >


	<link rel="stylesheet" href="./CSDN/download_new.css">
	<style>
.ali_container {
	background: #fff;
	padding-top: 20px;
	width: 340px;
}

.ln {
	padding: 5px 0;
}

.ln .h {
	display: inline-block;
	width: 4em;
}

.ln input {
	border: solid 1px #999;
	padding: 5px 8px;
}

.recent_list li {
	line-height: 24px;
	padding: 5px 0;
	font-size: 0;
}

.recent_list li .user_name, .recent_list li span {
	display: inline-block;
	vertical-align: middle;
	font-size: 14px;
	color: #3fa0e3;
}

.recent_list li span {
	color: #333;
}

.recent_list li .user_name {
	width: 40%;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}
</style>
</head>
<body>
 
<table border=1>
<caption>用户资源表</caption>
<s:iterator value="sources" var="source">
<tr>
<td>
<s:property value="sourceId"></s:property>
</td>
<td>
<s:property value="sourceName"></s:property>
</td>
<td>
<s:property value="sourceGrade"></s:property>
</td>
<td>
<s:property value="sourceDescrib"></s:property>
</td>
<td>
<s:property value="sourceDirec"></s:property>
</td>

<td>
<s:property value="userId"></s:property>
</td>
<td>
<s:property value="sourcePath"></s:property>
</td>
<td>
<a href="../fileManger/DownFile.jsp?sourcePath=<s:property value="sourcePath"/>">下载</a>
</td>
</tr>
</s:iterator>
</table>

	<!--登录弹窗 -->
	<script type="text/javascript" src="./CSDN/login.js.下载"></script>
	<script type="text/javascript" src="./CSDN/pdfobject.js.下载"></script>
	<script language="JavaScript" type="text/javascript"
		src="./CSDN/jquery.cookie.js.下载"></script>

	<!-- 样式示例，请替换成自己的样式 -->

	<!-- 样式示例结束 -->



	<!--评论-->
	<div id="comment" class="csdn_dl_comment" style="margin-top: 10px">
		<script language="JavaScript"  type="text/javascript"
			src="./CSDN/comment.js.下载"></script>

		<div class="recommand download_comment panel-body" >
			<script language="JavaScript" type="text/javascript"
				src="./CSDN/jquery.rating.js.下载"></script>
			<script src="./CSDN/cnick.js.下载" type="text/javascript"></script>
			<script type="text/javascript">
				function show() {
					var middle = document.getElementById("middle");
					if (middle.style.display == "none") {
						middle.style.display = ""
					} else {
						middle.style.display == "none"
					}
				}
			
					function shows(){
					 $(".comms").show();			
					}
				function showss() {
					 $(".reverts").show();
				}
			</script>
			<script src="jquery.min.js"></script>
			<div id="top"
				style="width: 200px; height: 50px; border: 1px solid gray"
				onclick="show()">
				<a href="AddComment.jsp">评论</a>
			</div>
			<div class="ComContext" id="middle"
				style="width: 400px; height: 200px; display: none;">
				<jsp:include page="AddComment.jsp"></jsp:include>
			</div>
			<div class="common_li clearfix" style="padding: 0;">
				<h3 class="tit" style="padding: 5px 0; margin-bottom: 0;">
					评论<span>共有<s:property value="count"/>条</span>
				</h3>
				<s:iterator value="commentList" status="ct" var="comment"
					id="comment">
					<s:set name="comID" value="<s:property value='comId'/>"></s:set>
					<div class="conLi clearfix" id="p_">
                      	<dl class="rightLi">
							<dt class="top">
								<a href="http://my.csdn.net/yyq411377361" target="_blank"
									class="name"> 用户： <s:property value="userName" />
								</a> <span class="time"><s:property value="datetime" /></span> 
								<span class="time"  onclick="shows()">回复</span>
                                  
								<!--2017.12.22 modified-->

								<div class="respond"></div>
							</dt>
							<dd class="detal">
								<s:property value="comTest" />
							</dd>
							<!--2017.3.3 modified 这里是回复框-->
						    <form 	name="my" class="comms" style="width: 400px; height: 140px; float: left;display:none;"
									action="RAction" method="post">
									 <input type="text" name="revert.comName" value=<s:property value='userName'/>>
									<input name="revert.comId" value=<s:property value='comId'/>><br>
									<textarea name="revert.revertText" cols="50" rows="4"></textarea>
									<br> <input type="submit" value="登录">
								</form>
				  <s:iterator value="revertList" status="rt" var="revert"
								id="revert">
								<s:set name="comid" value="<s:property value='comId'/>"></s:set>
								<s:if test="#comment.comId==#revert.comId">
									<dd class="respond_box"></dd>
									<!--2017.3.3 modified 这里是回复列表-->
									<dd class="res_list">
										<div class="res_c_list clearfix">

											<div class="res_c_r">
												<div class="res_c_t clearfix">
													<div class="res_c_t_l">
														<b>用户：<s:property value="userName" /></b><em>回复:</em><span><s:property value="comName" /></span><i><s:property  value="datetime"/></i>
													</div>
												</div>
											</div>
										</div>
										<div class="res_c_lis_c">
											<s:property value="revertText" />
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em
												id="top" class="rights" onclick="showss()">回复</em>
											<div>
												<form  class="reverts"
													style="width: 400px; height: 200px; display: none; float: left;"
													action="RAction" method="post">
										 <input type="text" name="revert.comName" value=<s:property value='userName'/>>
													<input name="revert.comId"
														value=<s:property value='comId'/>><br>
													<textarea name="revert.revertText" cols="50" rows="4"></textarea>
													<br> <input type="submit" value="提交">
												</form>
											</div>

										</div>
									</dd>

								</s:if>
							</s:iterator>
						</dl>
					</div>
				</s:iterator>

				<!-- page nav -->
				<div class="page_nav">
					共
					<s:property value="lastPage" />
					页第
					<s:property value="currentPage" />
					页&nbsp; <a class="pageliststy"
						href='<s:url action="/comAndRev/queryFileOneAction" namespace="/"><s:param name="currentPage" value="1"></s:param></s:url>'>首页</a>&nbsp;
					<a class="pageliststy"
						href='<s:url action="/comAndRev/List" namespace="/"><s:param name="currentPage" value="%{currentPage-1}"></s:param></s:url>'>上一页</a>&nbsp;
					<a class="pageliststy"
						href='<s:url action="/comAndRev/List" namespace="/"><s:param name="currentPage" value="%{currentPage+1}"></s:param></s:url>'>下一页</a>&nbsp;
					<a class="pageliststy"
						href='<s:url action="/comAndRev/List" namespace="/"><s:param name="currentPage" value="lastPage"></s:param></s:url>'>尾页</a>&nbsp;
					<!-- CC_Comment.getContent(2) -->
				</div>

			</div>

		</div>

		<!-- recommand submit -->
		<div class="cannot_comment" style="padding-bottom: 0">
			<div class="cannot_com_c" style="padding: 5px 0px;">
				<p class="cannot_com_b" style="padding: 5px;">
					<em><a href="http://passport.csdn.net/UserLogin.aspx">登录</a>后才能评论</em>
				</p>
			</div>
		</div>
		<div style="padding: 0">
			<div class="cannot_com_c" style="padding-top: 0px;">
				<dl class="cant cc_comment_msg">
					<dt>&nbsp;</dt>
					<dd></dd>
				</dl>
			</div>
		</div>
	</div>
</body>

</html>