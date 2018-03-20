// Chrome only for the tme being!

$(function () {
    $(".future_ui__piece").click(function () {
        var msg = $(this).find("span").text();
        if("用户管理" == msg){
            window.location.href= baseURL+"modules/sys/user.html";
        }else if("代码生成工具" == msg) {
            window.location.href= baseURL+"modules/sys/generator.html";
        }else if("SQL监控" == msg) {
            window.location.href= baseURL+"modules/sys/log.html";
        }else if("年级管理" == msg) {
            window.location.href= baseURL+"modules/master/grade.html";
        }else{
            window.location.href= baseURL+"modules/master/student.html";
        }
    })
});