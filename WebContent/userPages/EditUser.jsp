<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h2>修改学生信息页面</h2> 
  <form action="EditUser" method="post">
  <input type="hidden" name="userId" value="${requestScope.list.userId}"/>
    ID  ${requestScope.list.userId}<br>
        用户名<input type="text" name="userName" value="${requestScope.list.userName}"/><br>
        
      密码：<input type="text" name="userPass" value="${requestScope.list.userPass}"/> <br/>
      用户类型： <select name="userType"> 
     <option value="学生">学生</option>
     <option value="老师">老师</option>
              
 </select><br/>
    方向：<input type="text" name="userDirec" value="${requestScope.list.userDirec}"/>  
     <input type="submit" value="确定"/>
  </form>    
      <br>

</body>
</html>