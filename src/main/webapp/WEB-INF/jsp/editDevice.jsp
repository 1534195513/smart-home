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

    <title>编辑设备</title>

    <script type="text/javascript">
        function updateUser(){
            var form = document.forms[0];
            form.action = "<%=basePath%>user/updateUser";
            form.method="post";
            form.submit();
        }
    </script>

</head>

<body>
<h1>添加用户</h1>
<form action="" name="userForm">
    <input type="hidden" name="id" value="${device.id }"/>
    设备名称：<input type="text" name="设备名称" value="${device.name}"/>
    标签：<input type="text" name="标签" value="${device.tags }"/>
    位置：<input type="text" name="位置" value="${device.locate}"/>
    说明：<input type="text" name="说明" value="${device.about }"/>
    <input type="button" value="编辑" onclick="updateUser()"/>
    <a href="/user/deviceList"><input type="button" value="返回"></a>
</form>
</body>

</html>