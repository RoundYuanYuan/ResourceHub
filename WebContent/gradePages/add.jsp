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
<h1>资源名:${test}</h1>
	<s:form action="addGrade" method="addGrade" namespace="/">
		<s:hidden name="grade.sourceId" value="%{sourceId}" label="资源ID"/>
		<s:hidden name="grade.userId" value="%{userId}" label="用户ID"/>
		<s:textfield name="grade.grade" label="评分"/>
		<s:submit value="提交"/><a href='<s:url action="vim" namespace="/"></s:url>'>查看所有资源评分</a>
	</s:form>
</body>
</html>