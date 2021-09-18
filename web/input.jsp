<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/3/25
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body bgcolor=darkgray>
<center><h1>用户注册</h1></center>
<p style="font-family: 等线;font-size:20px">
<form action="register.jsp" method="post">
    <br>用户名：<input type=text name="name" value="">
    <br>密码：<input type=password name="password" value="">
    <br>个人兴趣：
    <input type=checkbox name="interests" value="唱歌">唱歌
    <input type=checkbox name="interests" value="跳舞">跳舞
    <input type=checkbox name="interests" value="阅读">阅读
    <input type=checkbox name="interests" value="编程">编程
    <input type=checkbox name="interests" value="旅游">旅游
    <br><input type=submit name="register" value="注册">
    <br><input type=reset name="Reset" value="重置">
</form>
</p>
</body>
</html>
