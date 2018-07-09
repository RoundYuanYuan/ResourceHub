<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文件上传</title>
</head>
<body>
你的Id:${user.userId}
你的方向:${user.userDirec}
	<form action="upLoadAction" method="post" enctype="multipart/form-data">
		文件名：<input type="text" name="source.sourceName"><br>
		选择文件：<input type="file" name="upload"><br>
		<input type="radio" value="docum" name="source.sourceType"class="checkbox">文档
		<input type="radio" value="video" name="source.sourceType"class="checkbox">视频<br>
		文件描述：<br><textarea name="source.sourceDescrib" rows="4" cols="20"></textarea><br>
		<input type="submit" value="上传">
	</form>
</body>
</html>