<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href='
			<s:url action="getAverage" namespace="/">
			<s:param name="sourceId" value="1"></s:param>
			</s:url>
		'>平均分</a>
	<table>
		<tr><td>资源</td></tr>
		<tr><td>资源</td><td><a href='
			<s:url action="getSourceById" namespace="/">
			<s:param name="sourceId" value="12"></s:param>
			<s:param name="userId" value="9"></s:param>
			</s:url>
		'>评分</a></td></tr>
	</table>
</body>
</html>