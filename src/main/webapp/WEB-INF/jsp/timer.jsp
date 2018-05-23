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
                    <form name="add_timer_form" class="formclass" id="add_timer_form" action="/User/addTimer" method="post" novalidate="novalidate">
                        <div class="form-group">
                            <label for="title">定时器名称：</label> <input name="title" class="form-control" id="title" required="" type="text" size="35" maxlength="50">
                        </div>

                        <div class="form-group">
                            <label>发送目标：</label>
                            <select name="toid" class="form-control valid" id="toid">
                                <option value="D2656">我的房间</option><option value="D5120">temperature</option><option value="D5818">0000</option>								<option value="U2402">超死亡(用户)</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>星期选择：</label>
                            <div class="form-inline">
                                <label> <input name="week[]" class="checkbox" type="checkbox" checked="checked" value="1">
                                    星期一
                                </label>
                                <label> <input name="week[]" class="checkbox" type="checkbox" checked="checked" value="2">
                                    星期二
                                </label>
                                <label> <input name="week[]" class="checkbox" type="checkbox" checked="checked" value="3">
                                    星期三
                                </label>
                                <label> <input name="week[]" class="checkbox" type="checkbox" checked="checked" value="4">
                                    星期四
                                </label>
                                <label> <input name="week[]" class="checkbox" type="checkbox" checked="checked" value="5">
                                    星期五
                                </label>
                                <label> <input name="week[]" class="checkbox" type="checkbox" checked="checked" value="6">
                                    星期六
                                </label>
                                <label> <input name="week[]" class="checkbox" type="checkbox" checked="checked" value="0">
                                    星期日
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>小时选择：</label>
                            <div class="form-inline">
                                <label> <input name="hour[]" type="checkbox" checked="checked" value="0">
                                    0
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="1">
                                    1
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="2">
                                    2
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="3">
                                    3
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="4">
                                    4
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="5">
                                    5
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="6">
                                    6
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="7">
                                    7
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="8">
                                    8
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="9">
                                    9
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="10">
                                    10
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="11">
                                    11
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="12">
                                    12
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="13">
                                    13
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="14">
                                    14
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="15">
                                    15
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="16">
                                    16
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="17">
                                    17
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="18">
                                    18
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="19">
                                    19
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="20">
                                    20
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="21">
                                    21
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="22">
                                    22
                                </label>
                                <label> <input name="hour[]" type="checkbox" value="23">
                                    23时
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>分钟选择：</label>
                            <div class="form-inline">
                                <label> <input name="min[]" type="checkbox" checked="checked" value="0">
                                    0
                                </label>
                                <label> <input name="min[]" type="checkbox" value="5">
                                    5
                                </label>
                                <label> <input name="min[]" type="checkbox" value="10">
                                    10
                                </label>
                                <label> <input name="min[]" type="checkbox" value="15">
                                    15
                                </label>
                                <label> <input name="min[]" type="checkbox" value="20">
                                    20
                                </label>
                                <label> <input name="min[]" type="checkbox" value="25">
                                    25
                                </label>
                                <label> <input name="min[]" type="checkbox" value="30">
                                    30
                                </label>
                                <label> <input name="min[]" type="checkbox" value="35">
                                    35
                                </label>
                                <label> <input name="min[]" type="checkbox" value="40">
                                    40
                                </label>
                                <label> <input name="min[]" type="checkbox" value="45">
                                    45
                                </label>
                                <label> <input name="min[]" type="checkbox" value="50">
                                    50
                                </label>
                                <label> <input name="min[]" type="checkbox" value="55">
                                    55分
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="content">命令内容：</label> <input name="content" class="form-control" id="content" required="" type="text" size="35" maxlength="50">
                        </div>
                        <div class="form-group">
                            <div class="form-inline">
                                <label> <input name="enable" class="checkbox" id="enable" type="checkbox" checked="checked" value="1"> 是否启用
                                </label>
                                <label> <input name="repeats" class="checkbox" id="repeats" type="checkbox" checked="checked" value="1"> 是否重复（不重复时，该定时器被触发一次时即停用）
                                </label>
                            </div>
                        </div>
                        <input class="btn btn-primary" type="submit" value="确 定">
                        <input class="btn btn-warning" type="reset" value="重 置">
                    </form>

                </div>
            </div>
        <!-- Main content -->
        <%--<section class="content">--%>
            <%--<!-- Your Page Content Here -->--%>
        <%--</section>--%>
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
    var ck = $("input[type='checkbox']:checked")    //获取选中的复选框数组
    var ckVal = "";
    for(var i = 0; i<ck.length; i++){
        //alert($(ck[i]).val())//循环得到当前选择的值
        ckVal += $(ck[i]).val() + ",";
    }
    alert(ckVal)


    // {
    //     access_token:"授权凭证,凭证内部已包含用户ID信息",
    //         id:"要修改的定时器ID",
    //     title:"定时器名称",
    //     enable:0/1, //0关闭,1开启
    //     repeats:0/1,//0不重复提醒,1重复提醒
    //     content:"命令内容",
    //     toid:"命令发送目标,形如:D12",
    //     week:"星期设置，形如:0,1,2,3,4,5,6",
    //     hour:"小时设置，形如:0,1,2,...,21,22,23",
    //     min:"分钟设置，形如:0,5,10,15,...,45,50,55"
    // }
</script>
</body>
</html>
