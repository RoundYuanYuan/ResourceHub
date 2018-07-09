<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="queryFileAction">
用户：<br>
<select name="source.sourceUser">
<option value="null">全部</option>
<option value="teacher">老师</option>
<option value="student">学生</option>
</select>
类型：<br>
<select name="source.sourceType">
<option value="null">全部</option>
<option value="docum">文档</option>
<option value="video">视频</option>
</select>
方向：<br>
<select name="source.sourceDirec">
<option value="null">全部</option>
<option value="A">A</option>
<option value="B">B</option>
<option value="C">C</option>
<option value="D">D</option>
<option value="E">E</option>
<option value="F">F</option>
</select>
<input type="submit" value="查询">
</form>
</body>
</html>