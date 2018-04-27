<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>智能小家居</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/static/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="/static/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/static/dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="/static/dist/css/skins/skin-blue.min.css">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <!-- Main Header -->
    <header class="main-header">
        <!-- Logo -->
        <a href="/user/index" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg">首页</span>
        </a>

        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->
                    <li class="dropdown messages-menu">
                        <!-- Menu toggle button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">您有4条消息待处理</li>
                            <li class="footer"><a href="#">查看所有消息</a></li>
                        </ul>
                    </li>
                    <!-- /.messages-menu -->
                    <!-- User Account Menu -->
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <!-- The user image in the navbar-->
                            <img src="" class="user-image user_head_img" alt="User Image">
                            <!-- hidden-xs hides the username on small devices so only the image appears. -->
                            <span class="hidden-xs user_name"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-right">
                                    <a href="/login" class="btn btn-default btn-flat">退出系统</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">

        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">

            <!-- Sidebar user panel (optional) -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="" class="img-circle user_head_img" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p class="user_name"></p>
                    <!-- Status -->
                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>

            <!-- Sidebar Menu -->
            <ul class="sidebar-menu">
                <!-- Optionally, you can add icons to the links -->

                <li class="treeview">
                    <a href="#"><i class="fa  fa-television"></i> <span>我的设备</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="/user/deviceList"><i class="fa fa-list"></i>设备列表</a></li>
                        <li><a href="/user/addDevice"><i class="fa fa-plus"></i>添加设备</a></li>
                        <li><a href="/reAttend/list"><i class="fa fa-hourglass-start"></i>定时器</a></li>
                    </ul>
                </li>
            </ul>
            <!-- /.sidebar-menu -->
            <ul class="sidebar-menu">
                <!-- Optionally, you can add icons to the links -->

                <li class="treeview">
                    <a href="#"><i class="fa fa-cogs"></i> <span>我的传感器</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="/user/sensorList"><i class="fa fa-cogs"></i>传感器列表</a></li>
                        <li><a href="/user/addSensor"><i class="fa fa-cogs"></i>添加传感器</a></li>
                        <li><a href="/reAttend/list"><i class="fa fa-cogs"></i>定时器</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="sidebar-menu">
                <!-- Optionally, you can add icons to the links -->

                <li class="treeview">
                    <a href="#"><i class="fa fa-bullhorn"></i> <span>报警信息</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="/User/listAlert.html"><i class="fa fa-list"></i> 报警列表</a></li>
                        <li><a href="/User/addAlert.html"><i class="fa fa-plus"></i> 添加报警</a></li>
                        <li><a href="/User/listTimer.html"><i class="fa fa-clock-o"></i> 定时器列表</a></li>
                        <li><a href="/User/addTimer.html"><i class="fa fa-plus"></i> 添加定时器</a></li>
                    </ul>
                </li>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <%--<section class="content-header">--%>
        <%--<h1>--%>
        <%--Page Header--%>
        <%--<small>Optional description</small>--%>
        <%--</h1>--%>
        <%--</section>--%>
        <%--设备--%>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <section class="panel">
                    <header class="panel-heading">
                        智能设备
                        <small><a
                                title="具有网络连接功能的设备，如：Arduino W5100、ESP8266、Openwrt路由器、树莓派等，添加设备后可将设备与贝壳物联平台进行对接，进行远程控制和监控数据"
                                href="#"><i class="fa fa-question"></i></a></small>
                    </header>
                    <div class="table-responsive panel-body">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>名称</th>
                                <th>APIKEY</th>
                                <th>位置</th>
                                <th>在线状态</th>
                                <th>在线时间</th>
                                <th>编辑</th>
                                <th>控制模式</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:if test="${!empty deviceList}">
                                <c:forEach items="${deviceList}" var="device">
                                    <tr>
                                        <td>${device.id}</td>
                                        <td>${device.name}</td>
                                        <td>${device.tags}</td>
                                        <td>${device.locate}</td>
                                        <td><span class="text-muted">不在线</span></td>
                                        <td>${device.lastActive}</td>
                                        <td><a title="编辑" class="btn btn-default btn-xs"
                                               href="/User/editDev.html?id=2656">
                                            <i class="fa fa-pencil"></i>
                                        </a></td>
                                        <td><a title="对话" class="btn btn-default btn-xs"
                                               href="/User/chatDev.html?id=2656"> <i
                                                class="fa fa-comments"></i>
                                        </a> <a title="遥控" class="btn btn-default btn-xs"
                                                href="/User/teleDev.html?id=2656"> <i
                                                class="fa fa-th"></i>
                                        </a> <a title="图表" class="btn btn-default btn-xs"
                                                href="/User/chartDev.html?id=2656">
                                            <i class="fa fa-bar-chart-o"></i>
                                        </a></td>
                                    </tr>
                                </c:forEach>
                            </c:if>
                            </tbody>
                        </table>
                    </div>
                </section>
            </div>
        </div>
        <!--/. row-->
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <section class="panel">
                    <header class="panel-heading">
                        数据接口
                        <small><a title="接口属于智能设备的一个功能，用于数据上传，在线实时监控" href="#"><i class="fa fa-question"></i></a>
                        </small>
                    </header>
                    <div class="table-responsive panel-body">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>名称</th>
                                <th>所属设备id</th>
                                <th>接口类型</th>
                                <th>更新时间</th>
                                <th>编辑</th>
                                <th>数据查看</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:if test="${!empty sensorList}">
                                <c:forEach items="${sensorList}" var="sensor">
                                    <tr>
                                        <td>${sensor.id}</td>
                                        <td>${sensor.name}</td>
                                        <td>${sensor.deviceId}</td>
                                        <td>${sensor.type}</td>
                                        <td>${sensor.lastUpdate}</td>
                                        <td>${sensor.lastData}</td>
                                        <td>
                                            <a class="btn btn-default btn-xs" href="/User/editInput?id=4588">
                                                <i class="fa fa-pencil"></i>
                                            </a>
                                        </td>
                                        <td>
                                            <a class="btn btn-default btn-xs" href="/User/chartInput?id=4588">
                                                <i class="fa fa-bar-chart-o"></i>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:if>
                            </tbody>
                        </table>
                    </div>
                </section>
            </div>
        </div>
        <!-- Main content -->
        <section class="content">
            <!-- Your Page Content Here -->
            <!-- LINE CHART -->
            <div id="container" style="min-width:400px;height:400px"></div>

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    <footer class="main-footer">
        <strong>Copyright &copy; 2018 <a href="#">智能小家居</a>.</strong> All rights reserved.
    </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 2.2.3 -->
<script src="/static/jquery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/static/bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="/static/dist/js/app.min.js"></script>
<script src="/static/js/user.js"></script>
<script src="https://img.hcharts.cn/highcharts/highcharts.js"></script>
<script src="https://img.hcharts.cn/highcharts/modules/exporting.js"></script>
<script src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>
</body>
</html>
