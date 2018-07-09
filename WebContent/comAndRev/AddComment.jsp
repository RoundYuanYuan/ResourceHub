<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="CAction" class="ASD" method="post">
    <input type="hidden"  name="comment.userId" value="1" />
      <input type="hidden"  name="comment.sourceId" value="1" />
    <textarea  name="comment.comTest"  cols="50" rows="4" ></textarea><br>
   <input type="submit" value="提交" />
    </form>
    
</body>
</html>