<%--
  Created by IntelliJ IDEA.
  User: Hasee
  Date: 2018/4/7
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>添加用户</title>

    <script type="text/javascript">
        function addUser(){
            var form = document.forms[0];
            form.action = "<%=basePath%>user/addUser";
            form.method="post";
            form.submit();
        }
    </script>

</head>

<body>
<h1><%=path%>添加用户<%=basePath%></h1>
<form action="" name="userForm">
    姓名：<input type="text" name="userName">
    年龄：<input type="text" name="age">
    <input type="button" value="添加" onclick="addUser()">
</form>
</body>
</html>