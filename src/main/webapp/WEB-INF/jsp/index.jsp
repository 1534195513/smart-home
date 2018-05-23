<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
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
    <!-- Bootstrap switch -->
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap-switch.min.css">
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
                            <%--<img src="" class="user-image user_head_img" alt="User Image">--%>
                            <!-- hidden-xs hides the username on small devices so only the image appears. -->
                            <span class="hidden-xs fa fa-fw fa-transgender-alt"></span>
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
            <!-- Sidebar Menu -->
            <ul class="sidebar-menu">
                <!-- Optionally, you can add icons to the links -->
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="/static/image/cat.jpg" class="img-circle" alt="User Image">
                    </div>
                    <div class="pull-left info">
                        <p>Alexander Pierce</p>
                        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                    </div>
                </div>

                <li class="treeview">
                    <a href="#"><i class="fa  fa-television"></i> <span>我的设备</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="/user/dev"><i class="fa fa-list"></i>设备列表</a></li>
                        <li><a href="/user/addDevice"><i class="fa fa-plus"></i>添加设备</a></li>
                        <li><a href="/user/timer?id=206"><i class="fa fa-hourglass-start"></i>定时器</a></li>
                    </ul>
                </li>
            </ul>
            <!-- /.sidebar-menu -->
            <ul class="sidebar-menu">
                <!-- Optionally, you can add icons to the links -->
                <li class="treeview">
                    <a href="#"><i class="fa fa-fw fa-cog"></i> <span>我的传感器</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="/user/sensorList"><i class="fa fa-cogs"></i>传感器列表</a></li>
                        <li><a href="/user/addSensor"><i class="fa fa-plus"></i>添加传感器</a></li>
                        <li><a href="/reAttend/list"><i class="fa fa-cogs"></i>定时器</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="sidebar-menu">
                <!-- Optionally, you can add icons to the links -->

                <li class="treeview">
                    <a href="#"><i class="fa fa-fw fa-bullhorn"></i> <span>报警信息</span>
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
                        <table class="table" id="dev">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>名称</th>
                                <th>设备简介</th>
                                <th>是否公开</th>
                                <th>是否在线</th>
                                <th>在线时长</th>
                                <th>对话</th>
                                <th>查看</th>
                            </tr>
                            </thead>
                            <tbody id="device">
                            <tr><a href="/user/toAddDevice">添加设备</a></tr>
                            </tbody>
                        </table>
                    </div>
                </section>
            </div>
        </div>
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
                                <th>所属ID</th>
                                <th>名称</th>
                                <th>是否公开</th>
                                <th>是否在线</th>
                                <th>数据查看</th>
                                <th>历史数据</th>
                            </tr>
                            </thead>
                            <tbody id="sensor">
                            <tr><a href="/user/toAddSensor"> 添加传感器</a></tr>
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
            <!-- /relay-->
            <%--<p>--%>
            <%--<input type="checkbox" name="my-checkbox1" checked>--%>
            <%--<input type="checkbox" name="my-checkbox1" checked>--%>
            <%--<input type="checkbox" name="my-checkbox1" checked>--%>
            <%--<input type="checkbox" name="my-checkbox1" checked>--%>
            <%--<input type="checkbox" name="my-checkbox1" checked>--%>
            <%--</p>--%>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    <footer class="main-footer">
        <strong>Copyright &copy; 2017 <a href="#">智能小家居</a>.</strong> All rights reserved.
    </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 2.2.3 -->
<script src="/static/jquery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/static/bootstrap/js/bootstrap.min.js"></script>
<!-- Bootstrap-switch-->
<script src="/static/bootstrap/js/bootstrap-switch.min.js"></script>
<!-- AdminLTE App -->
<script src="/static/dist/js/app.min.js"></script>
<script src="/static/js/user.js"></script>
<script src="https://img.hcharts.cn/highcharts/highcharts.js"></script>
<script src="https://img.hcharts.cn/highcharts/modules/exporting.js"></script>
<script src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>
<script>
    $(function () {
        $.ajax({
            type: "get",
            url: "/user/dev",
            dataType: 'json',
            success: function (data) {
                var str = eval(data)
                if (str.online==1){
                    str.online="在线"
                }
                else {
                    str.online="不在线"
                }
                str.online_time=parseInt(str.online_time/60/60)+"小时";
                var s = "<tr><td>" + str.id + "</td><td>" + str.title + "</td><td>" + str.description + "</td><td>" + str.open
                    + "</td><td>" + str.online + "</td><td>" + str.online_time + "  <td><a title=\"对话\" class=\"btn btn-default btn-xs\"\n" +
                    "                                               href=\"/user/chatDev?id="+str.id+"\"> <i\n" +
                    "                                                class=\"fa fa-comments\"></i>\n" +
                    "                                        </a>\n" +
                    "                                        </td>\n" +
                    "                                        <td><a title=\"图表\" class=\"btn btn-default btn-xs\"\n" +
                    "                                               href=\"/User/chartDev.html?id=${device.id}\">\n" +
                    "                                            <i class=\"fa fa-bar-chart-o\"></i>\n" +
                    "                                        </a>\n" +
                    "                                        </td>" + "</td></tr>";
                $("#device").append(s);
            },
            error: function () {
                alert("JSON数据获取失败，请联系管理员！");
            }

        });
        $.ajax({
            type: "get",
            url: "/user/sen",
            dataType: 'json',
            success: function (data) {
                var sen = eval(data)
                for (var i in sen) {
                    var s = "<tr><td>" + sen[i].id + "</td><td>" + sen[i].did + "</td><td>" + sen[i].title + "</td><td>" + sen[i].type
                        + "</td><td>" + sen[i].save +
                        "                                        <td><a class=\"btn btn-default btn-xs\" href=\"/user/editSensor?id=${sensor.id}\">\n" +
                        "                                            <i class=\"fa fa-pencil\"></i>\n" +
                        "                                        </a>\n" +
                        "                                        </td>\n" +
                        "                                        <td>\n" +
                        "                                            <a class=\"btn btn-default btn-xs\" href=\"/user/historyData?id="+sen[i].id+"\">\n" +
                        "                                                <i class=\"fa fa-bar-chart-o\"></i>\n" +
                        "                                            </a>\n" + "</td></tr>";
                    $("#sensor").append(s);
                }
            },
            error: function () {
                alert("JSON数据获取失败，请联系管理员！");
            }
        });
    });
</script>
<%--<script>--%>
<%--$(function () {--%>
<%--var le = new Array();--%>
<%--var temp;--%>
<%--//         $.ajax({--%>
<%--//             url: "send",--%>
<%--//             type: "post",--%>
<%--//             dataType: "json",--%>
<%--//             async: false,--%>
<%--//             success: function (data) {--%>
<%--// //"{\"M\":\"update\",\"ID\":\"2656\",\"V\":{\"4588\":\"29\"}}";--%>
<%--//                 temp = data.V;--%>
<%--//             },--%>
<%--//             error: function () {--%>
<%--//--%>
<%--//                 alert("请求失败")--%>
<%--//             }--%>
<%--//         });--%>
<%--// {--%>
<%--//     "M":"update",--%>
<%--//         "ID":"2656",--%>
<%--//     "T":"1523813040",--%>
<%--//     "V":--%>
<%--//     {--%>
<%--//         "4588":"24"--%>
<%--//     }--%>
<%--// }--%>
<%--Highcharts.setOptions({--%>
<%--global: {--%>
<%--useUTC: false--%>
<%--}--%>
<%--});--%>
<%--Highcharts.chart('container', {--%>
<%--chart: {--%>
<%--type: 'spline',--%>
<%--animation: Highcharts.svg, // don't animate in old IE--%>
<%--marginRight: 10,--%>
<%--events: {--%>
<%--load: function () {--%>
<%--// set up the updating of the chart each second--%>
<%--var series = this.series[0];--%>
<%--setInterval(function () {--%>
<%--var x = (new Date()).getTime(), // current time--%>
<%--y = Math.random();--%>
<%--series.addPoint([x, y], true, true);--%>
<%--}, 1000);--%>
<%--}--%>
<%--}--%>
<%--},--%>
<%--credits: {--%>
<%--enabled: false--%>
<%--},--%>
<%--title: {--%>
<%--text: '温度'--%>
<%--},--%>
<%--subtitle: {--%>
<%--text: '副标题'--%>
<%--},--%>
<%--xAxis: {--%>
<%--type: 'datetime',--%>
<%--tickPixelInterval: 150--%>
<%--},--%>
<%--yAxis: {--%>
<%--title: {--%>
<%--text: '°C'--%>
<%--},--%>
<%--plotLines: [{--%>
<%--value: 0,--%>
<%--width: 1,--%>
<%--color: '#808080'--%>
<%--}]--%>
<%--},--%>
<%--tooltip: {--%>
<%--formatter: function () {--%>
<%--return '<b>' + this.series.name + '</b><br/>' +--%>
<%--Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +--%>
<%--Highcharts.numberFormat(this.y, 2);--%>
<%--}--%>
<%--},--%>
<%--legend: {--%>
<%--enabled: false--%>
<%--},--%>
<%--exporting: {--%>
<%--enabled: false--%>
<%--},--%>
<%--series: [{--%>
<%--name: 'temperature',--%>
<%--data: (function () {--%>
<%--// generate an array of random data--%>
<%--var data = [],--%>
<%--time = (new Date()).getTime(),--%>
<%--i;--%>

<%--for (i = -19; i <= 0; i += 1) {--%>
<%--data.push({--%>
<%--x: time + i * 1000,--%>
<%--y: 0--%>
<%--});--%>
<%--}--%>
<%--return data;--%>
<%--}())--%>
<%--}]--%>
<%--});--%>
<%--});--%>
<%--</script>--%>
</body>
</html>
