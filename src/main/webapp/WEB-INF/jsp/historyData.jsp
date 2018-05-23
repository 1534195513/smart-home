<%--
  Created by IntelliJ IDEA.
  User: Hasee
  Date: 2018/5/23
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8"><link rel="icon" href="https://static.jianshukeji.com/highcharts/images/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        /* css 代码  */
    </style>
    <script src="https://img.hcharts.cn/jquery/jquery-1.8.3.min.js"></script>
    <script src="https://img.hcharts.cn/highstock/highstock.js"></script>
    <script src="https://img.hcharts.cn/highcharts/modules/exporting.js"></script>
    <script src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>
</head>
<body>
<div id="container" style="height: 400px; min-width: 600px"></div>
<script>
    <%--// JS 代码  for(var i = 0;i<${data.length()};i++){--%>
    <%--document.getElementById("id1").innerHTML= ${data}--%>
    <%--}--%>
    $.getJSON('/user/historyData', function(data) {
        alert(JSON.stringify(data))
        Highcharts.stockChart('container', {
            chart: {
                zoomType: 'xy'
            },
            title: {
                text: 'Y 轴滚动条'
            },
            subtitle: {
                text: '请缩放图表后查看滚动条'
            },
            yAxis: {
                scrollbar: {
                    enabled: true,
                    showFull: false
                }
            },
            tooltip: {
                split: false
            },
            series: [{
                data: data.data,
                pointStart: data.pointStart,
                pointInterval: data.pointInterval
            }]
        });
    });
</script>
</body>
</html>
