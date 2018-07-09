<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
			<tr bgcolor="#33ccff">
				<td>Id</td><td>用户名</td><td>密码</td><td>用户类型</td><td>方向</td><td></td><td></td>
			</tr>
			<s:iterator value="list" var="l" status="st">
			<tr>
				<td align="center">
					<s:property value="#l.userId"></s:property>
				</td>
				<td align="center">
					<s:property value="#l.userName"></s:property>
				</td>
				<td align="center">
					<s:property value="#l.userPass"></s:property>
				</td>
				<td align="center">
					<s:property value="#l.userType"></s:property>
				</td>
				<td align="center">
					<s:property value="#l.userDirec"></s:property>	
				</td><td> <a href='<s:url action="SelectUserById"><s:param name="userId" value="#l.userId"></s:param></s:url>'>修改用户信息</a></td>
					<td><a href='<s:url action="DeleteUser"><s:param name="userId" value="#l.userId"></s:param></s:url>'>删除用户信息</a></td>
					</tr>
					</s:iterator>
			 </table>

</body>
</html>