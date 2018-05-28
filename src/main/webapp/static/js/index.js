function say() {
    $.ajax({
        type: "post",
        url: "/user/say",
        dataType: "json",
        data: {
            "c": $(":text").val(),
            "id": "D2656"
        },
        success: function (data) {
            alert("已发送")
        },
        success: function (data) {
            alert("cuw")
            alert(data)
        }
    })

}
function airCondition(){
    var code=$("#code option:selected");  //获取选中的项
    $.ajax({
        type: "post",
        url: "/user/airCondition",
        dataType: "json",
        data: {
            "id": "D2656",
            "code":code.text()

        },
        success: function (data) {
            alert("已发送")
        },
        success: function (data) {
            alert("cuw")
            alert(data)
        }
    })

}

$(function () {
    $.ajax({
        type: "get",
        url: "/user/dev",
        dataType: 'json',
        success: function (data) {
            var str = eval(data)
            if (str.online == 1) {
                str.online = "<strong><span class=\"text-success\">在线</span></strong>"
            }
            else {
                str.online = "不在线"
            }
            str.online_time = parseInt(str.online_time / 60 / 60) + "小时";
            var s = "<tr><td>" + str.id + "</td><td>" + str.title + "</td><td>" + str.description + "</td><td>" + str.online + "</td><td>" + str.online_time + "  <td><input type='text'/> <a id=" + str.id + " onclick='say()' title=\"发送\" class=\"btn btn-default btn-xs\"\n"
                + "> <i\n" +
                "                                                class=\"fa fa-comments\"></i>\n" +
                "</a>\n" +
                "</td>\n" +
                "<td><a title=\"图表\" class=\"btn btn-default btn-xs\"\n" +
                "href=\"/User/chartDev.html?id=${device.id}\">\n" +
                "<i class=\"fa fa-bar-chart-o\"></i>\n" +
                "</a>\n" +
                "</td>" + "</td></tr>";
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
            var update = "";
            for (var i in sen) {
                if(sen[i].unit=="开/关"){
                    update="   <input name=\"status\" type=\"checkbox\" data-size=\"small\">"
                }
                if(sen[i].unit=="°C"){
                    update="<select id='code' onchange='airCondition()'>\n" +
                        "<option value='0'>关机</option>\n" +
                        "<option value='16'>16度</option>\n" +
                        "<option value='17'>17度</option>\n" +
                        "<option value='18'>18度</option>\n" +
                        "<option value='19'>19度</option>\n" +
                        "<option value='20'>20度</option>\n" +
                        "<option value='21'>21度</option>\n" +
                        "<option value='22'>22度</option>\n" +
                        "<option value='23'>23度</option>\n" +
                        "<option value='24'>24度</option>\n" +
                        "<option value='25'>25度</option>\n" +
                        "<option value='26'>26度</option>\n" +
                        "<option value='27'>27度</option>\n" +
                        "<option value='28'>28度</option>\n" +
                        "<option value='29'>29度</option>\n" +
                        "<option value='30'>30度</option>\n" +
                        "</select>"
                }
                var s = "<tr><td>" + sen[i].id + "</td><td>" + sen[i].did + "</td><td>" + sen[i].title + "</td><td>" + sen[i].unit
                    + "</td><td>" + update +
                    "                                        <td><a class=\"btn btn-default btn-xs\" href=\"/user/saveData?id=" + sen[i].id + "\">\n" +
                    "                                            <i class=\"fa fa-download\"></i>\n" +
                    "                                        </a>\n" +
                    "                                        </td>\n" +
                    "                                        <td>\n" +
                    "                                            <a class=\"btn btn-default btn-xs\" href=\"/user/historyData?id=" + sen[i].id + "\">\n" +
                    "                                                <i class=\"fa fa-bar-chart-o\"></i>\n" +
                    "                                            </a>\n" + "</td></tr>";
                $("#sensor").append(s);
            }
        },
        error: function () {
            alert("JSON数据获取失败，请联系管理员！");
        }
    });
    $.ajax({
        type: "get",
        url: "/user/timer?id=0",
        dataType: 'json',
        success: function (data) {
            var timer = eval(data)

            for (var i in timer) {
                if (timer[i].repeats == "1") {
                    timer[i].repeats = "<strong><span class=\"text-success\">重复</span></strong>"
                } else {
                    timer[i].repeats = "不重复"
                }
                if (timer[i].enable == "1") {
                    timer[i].enable = "<strong><span class=\"text-success\">启用</span></strong>"
                } else {
                    timer[i].enable = "停用"
                }
                var s = "<tr><td>" + timer[i].id + "</td><td>" + timer[i].title + "</td><td>"
                    + "<a title=\"编辑\" class=\"btn btn-default btn-xs\"\n" +
                    "href=\"/user/editTimer?id=" + timer[i].id + "\"> <i\n" +
                    "class=\"fa fa-pencil\"></i>\n" +
                    "</a>\n" +
                    "</td>\n" +
                    "<td>\n" + timer[i].enable +
                    "</td><td>" + timer[i].repeats +
                    "</a>\n" + "</td><td>" + timer[i].week + "</td><td>" + timer[i].hour + "</td><td>" + timer[i].min
                    + "</td><td>" + timer[i].toid + "</td><td>" + timer[i].content + "</td></tr>";
                $("#timer").append(s);
                // <span class="label label-success">重复</span>
            }

        },
        error: function () {
            alert("JSON数据获取失败，请联系管理员！");
        }
    });

});