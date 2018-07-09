<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
      <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<link rel="stylesheet" href="css/CRbase.css">
<script language="javascript">
function show()
{
var middle=document.getElementById("middle");
if (middle.style.display == "none")
{
middle.style.display=""
}
else
{
middle.style.display=="none" 
}
}
function shows()
{
var middles=document.getElementById("middles");
if (middles.style.display == "none")
{
middles.style.display=""
}
else
{
middles.style.display=="none" 
}
}

function showss()
{
var middless=document.getElementById("middless");
if (middless.style.display == "none")
{
middless.style.display=""
}
else
{
middless.style.display=="none" 
}
}
</script>
</head>
<body>
<!-- 评论功能  -->
  <div id="top" style="width:200px;height:50px;border:0px solid gray" onclick="show()">
    <a href="AddComment.jsp">评论</a>
    </div>
  <div class="ComContext" id="middle" style="width:400px;height:200px; display:none;" >
   <jsp:include page="AddComment.jsp"></jsp:include>
   </div>
  全部评论
 <s:iterator value="commentList" status="ct" var="comment" id="comment">
 
 <!-- 每条评论 -->
  <div class="list">
  <div class="left"><s:property value="userName"/></div> 
  <div class="main" > <s:property value="comTest"/> </div> 
  <div id="top" class="rights"  onclick="shows()">  <a href="AddRevert.jsp?comId=<s:property value='comId'/>">回复</a></div>
    <!-- <a href="AddRevert.jsp?comId=<s:property value='comId'/>">回复</a> -->
 </div>
   <form  id="middles" style="width:400px;height:200px; display:none;float:right;"  action="RAction"><input name="revert.comId" value=<s:property value='comId'/>><br>
    <textarea  name="revert.revertText"  cols="50" rows="4" ></textarea><br>
   <input type="submit" value="dl">
    </form> 
 <s:set name="comID" value="<s:property value='comId'/>"></s:set>
 
 <!-- 每条回复 -->
  <s:iterator value="revertList" status="rt" var="revert" id="revert">
  <s:set name="comid" value="<s:property value='comId'/>"></s:set> 
  <s:if test="#comment.comId==#revert.comId" > 
    <div class="list">
  <div class="lefts"> <s:property value="userName"/>回复了：<s:property value="#comment.userName"/></div>
  <div class="mains" >   <s:property value="revertText"/></div>
  

 
    <div id="top" class="rights"  onclick="showss()">  <a href="AddRevert.jsp?comId=<s:property value='comId'/>">回复</a></div>
    
 <div style="float:left;">
<form  id="middless" style="width:400px;height:200px; display:none;float:right;"  action="RAction"><input name="revert.comId" value=<s:property value='comId'/>><br>
    <textarea  name="revert.revertText"  cols="50" rows="4" ></textarea><br>
   <input type="submit" value="提交">
    </form></div>
   </div>
  </s:if>   </s:iterator>
  </s:iterator>
  <div style="height:80px;float:left">
   共<s:property value="lastPage" />页
               第<s:property value="currentPage"/>页,
            <a href='<s:url action="List" namespace="/"><s:param name="currentPage" value="1"></s:param></s:url>'>首页</a>
            <a href='<s:url action="List" namespace="/"><s:param name="currentPage" value="%{currentPage-1}"></s:param></s:url>'>上一页, </a>
            <a href='<s:url action="List" namespace="/"><s:param name="currentPage" value="%{currentPage+1}"></s:param></s:url>'>下一页</a>
            <a href='<s:url action="List" namespace="/"><s:param name="currentPage" value="lastPage"></s:param></s:url>'>尾页</a>
    
  </div>
  
</body>
</html>