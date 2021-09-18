<%@ page import="campus.computer.StudentService" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/3/25
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor=darkgray>
<jsp:useBean id="Student" class="campus.computer.Student" scope="session"/>
<p style="font-family: 等线;font-size: 20px">
    <jsp:setProperty name="Student" property="name" param="name"/>
    <jsp:setProperty name="Student" property="password" param="password"/>
    <jsp:setProperty name="Student" property="interests" param="interests"/>
</p>
<%--<jsp:forward page="registerSuccess.jsp"/>--%>
<%
    //String[] interest=null;
    //interest= Student.getInterests();
    //System.out.println("jsp:"+interest[0]);
    StudentService.register(Student);
    response.sendRedirect("registerSuccess.jsp");
%>
</body>
</html>
