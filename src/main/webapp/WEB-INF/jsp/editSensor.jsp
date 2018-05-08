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

    <title>编辑传感器</title>

    <script type="text/javascript">
        function updateUser(){
            var form = document.forms[0];
            form.action = "<%=basePath%>user/updateSensor";
            form.method="post";
            form.submit();
        }
    </script>

</head>

<body>
<h1>编辑传感器</h1>
<form action="" name="userForm">
    <input type="hidden" name="id" value="${sensor.id }"/>
    设备名称：<input type="text" name="传感器名称" value="${sensor.name}"/>
    标签：<input type="text" name="标签" value="${sensor.tags }"/>
    类型：<input type="text" name="类型" value="${sensor.type}"/>
    说明：<input type="text" name="说明" value="${sensor.about }"/>
    <input type="button" value="编辑" onclick="updateUser()"/>
    <a href="/user/sensorList"><input type="button" value="返回"></a>
</form>
</body>

</html>