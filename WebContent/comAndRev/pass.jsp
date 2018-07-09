<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
      <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body><table><tr><td>学号</td><td>文件名称</td><td>上传类型</td><td>状态</td><td>操作</td></tr>
<s:iterator value="sourceOne"  var="source" status="st" >
 <tr>
 <td><s:property value="sourceId" /></td>
 <td ><s:property value="sourceName" /></td>
 <td><s:property value="sourceType" /></td><td>待审核</td>
 <td><a href="agree?source.sourceId=<s:property value='sourceId'/>">同意</a></td>
 <td><a href="refuse?source.sourceId=<s:property value='sourceId'/>">拒绝</a></td></tr>
 </s:iterator></table>
</body>
</html>