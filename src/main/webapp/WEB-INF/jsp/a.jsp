<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    String date = format.format(new Date());
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script type="text/javascript" src="/js/jquery-2.2.3.min.js"></script>
</head>

<body>


<input type="text" id="field13855" value="<%=date%>">
<input type="text" id="field13765" value="">
<input type="text" id="field13857" value="">
<input type="text" id="indexnum0" value="field13855">
<input type="text" id="a1">
<input type="text" id="a2">
<input type="text" id="a3">
<input type="text" id="a4">
<input type="text" id="a5">
<input type="text" id="a6">
<%--<input type="button" onclick="getjhrq()">--%>
<script type="text/javascript">
    var tjrqfield = "field13855";//业务助理审单日期
    var jhrqfield = "field13765";//承诺交货日期
    var jhzxrqfield = "field13857";//计划行日期
    function getjhrq() {
        var yqjhrq = $("#" + tjrqfield).val();//提取日期


        var arr1 = yqjhrq.split("-")//拆分2018,04,15
        var d = new Date(arr1[0],parseInt(arr1[1])-1,parseInt(arr1[2]));
        var n = new Date(d.getFullYear(),d.getMonth(),d.getDate()).getTime()+ 20 * 24 * 60 * 60 * 1000;
        alert(n)
        var result = new Date(n);
        alert(result)
        var mm = result.getMonth() + 1;
        var ded = result.getDate();
        if(mm<10){
            mm = "0"+mm;
        }
        if(ded<10){
            ded = "0"+ded;
        }
        var kk = result.getFullYear() + "-" + mm+ "-" + ded;

        jQuery("#"+jhrqfield).val(kk);
        jQuery("#"+jhrqfield+"span").html(kk);
        getbzjes();
    }
    function jgzc(xh){
        var yqjhrqs = jQuery("#"+jhrqfield).val();//提交日期

        jQuery("#"+jhzxrqfield+"_"+xh).val(yqjhrqs );
        jQuery("#"+jhzxrqfield+"_"+xh+"span").html(yqjhrqs );


    }
    function getbzjes(){


        jQuery("input[name='check_node_0']").each(function(u){
            var intRowcs = jQuery(this).val();

            jgzc(intRowcs);
        });
    }

    function _customAddFun0(){

        var indexnum1Val = jQuery("#indexnum0").val();
        indexnum1Val = parseInt(indexnum1Val)-1;
        alert("#"+jhzxrqfield+"_"+indexnum1Val);
        jQuery("#"+jhzxrqfield+"_"+indexnum1Val).bindPropertyChange(function(obj){

            var intRow = jQuery(obj).attr("id").split('_')[1];

            jgzc(intRow);
        });

    }

    jQuery(document).ready(function(){
        getjhrq();
        jQuery("#"+jhrqfield).bindPropertyChange(function(){
            getbzjes();
        });

    });

</script>
</body>
</html>