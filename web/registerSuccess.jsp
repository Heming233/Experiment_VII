<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/3/25
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor=darkgray>
<jsp:useBean id="Student" class="campus.computer.Student" scope="session"/>
<p style="font-family: 楷体;font-size:26px">
    <br>欢迎
    <%
        PrintWriter Out=response.getWriter();
        Out.println("兴趣爱好为：");
        String[] interest= Student.getInterests();
        for(int i=0 ; i<interest.length; i++){
            Out.print(interest[i]+" ");
        }
    %>
    的<jsp:getProperty name="Student" property="name"/>同学！
    <br>不要忘记密码哦：<jsp:getProperty name="Student" property="password"/>
    <br><b>注册成功！</b>
</p>
</body>
</html>
