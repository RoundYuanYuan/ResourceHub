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
	<s:form action="upLoadAction" method="post" enctype="multipart/form-data" >
	<table>
		<s:fielderror></s:fielderror>
		<caption>文件上传</caption>
		<s:textfield name="filemodel.fileTitle" lable="文件名"></s:textfield>
		<s:textfield type="file" name="upload" lable="选择文件"></s:textfield>
		<s:submit value="提交"></s:submit> <s:reset value="取消"></s:reset>
		</table>
	</s:form>
</body>
</html>