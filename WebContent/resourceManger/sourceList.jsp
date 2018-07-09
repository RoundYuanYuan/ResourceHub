<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border=1>
<caption>用户资源表</caption>
<s:iterator value="sourcelist" var="source">
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
<td><a href="queryFileOneAction?source.sourceId=<s:property value="sourceId"></s:property>">查看</a></td>
</tr>
</s:iterator>
</table>
</body>
</html>