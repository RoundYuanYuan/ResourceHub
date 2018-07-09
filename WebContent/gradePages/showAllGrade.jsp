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
<table>
	<tr><td>资源编号</td><td>用户编号</td><td>评分</td><td>操作</td></tr>
	<s:iterator value="gradeList" status="st" var="s">
	<tr<s:if test="#st.odd">"style="background-color:#bbbbbb"</s:if>>
		<td align="center"><s:property value="sourceId"/></td>
		<td align="center"><s:property value="userId"/></td>
		<td align="center"><s:property value="grade"/></td>
		<td align="center"><a href='
			<s:url action="delete" namespace="/">
			<s:param name="sourceId" value="sourceId"></s:param>
			<s:param name="userId" value="userId"></s:param>
			</s:url>
		'>删除</a></td>
	</tr>
	</s:iterator>
</table>
</body>
</html>