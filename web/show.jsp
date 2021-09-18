<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/4/28
  Time: 9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>show</title>
</head>
<body>
<c:if test="${sessionScope.student.password!=null}">
    该用户名已被占用<br>
    姓名：${sessionScope.student.name}<br>
    兴趣爱好：<c:forEach var="interest" items="${sessionScope.student.interests}">
    <c:out value="${interest}  "/>
</c:forEach>
    <br>5秒后跳转至检测用户名占用页面
    <meta http-equiv="refresh" content="5;url=search.jsp">
</c:if>
<c:if test="${sessionScope.student.password==null}">
    该用户名尚未注册，5秒后跳转至注册页面
    <meta http-equiv="refresh" content="5;url=input.jsp">
</c:if>
</body>
</html>
