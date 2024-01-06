<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2023/11/13
  Time: 18:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="<%=basePath%>/js/jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/layui-v2.7.6/layui/css/layui.css">
    <script src="<%=basePath%>/layui-v2.7.6/layui/layui.js"></script>
    <link rel="stylesheet" href="<%=basePath%>css/top.css">
</head>
<body>
<div class="top">
    <div class="top_left">
        <div class="top_left_log myflex_x">
            <img src="<%=basePath%>/img/maoyan.png">
        </div>
        <div class="top_left_city myflex_x">
        </div>
        <div class="top_left_navy myflex_x">
            <div style="background-color: #ef4238;color:white" class="navy myflex_x">首页</div>
            <div class="navy myflex_x">电影</div>
            <div class="navy myflex_x">影院</div>
            <div class="navy myflex_x">演出</div>
        </div>
    </div>

    <div class="search">
        <input class="doSearch" type="text" placeholder="搜索">
        <a href="#"><img src="<%=basePath%>/img/放大镜%20(1).png" alt="放大镜" class="getMovie"></a>
    </div>

    <div class="top_right">
        <%--            <div class="app myflex_x">--%>
        <%--                <img src="<%=basePath%>/img/app.png">--%>
        <%--                <span>APP下载</span>--%>
        <%--            </div>--%>
        <div class="app-download">
            <a href="/app" target="_blank">
                <span class="iphone-icon"></span>
                <span class="apptext">APP下载</span>
                <span class="caret"></span>
                <div class="download-icon">
                    <p class="down-title">扫码下载APP</p>
                    <p class='down-content'>选座更优惠</p>
                </div>
            </a>
        </div>
        <div class="user myflex_x">
            <%--使用jsit语法进行判断处理--%>
            <c:if test="${sessionScope.user==null}">
                <span class="login" style="cursor: pointer">登入</span>
                <span>&nbsp;</span>
                <span class="register" style="cursor: pointer">注册</span>
            </c:if>
            <c:if test="${sessionScope.user!=null}">
                <span>欢迎：${sessionScope.user.userName}</span>
                <span class="loginOut" style="color: red;margin-left: 20px;cursor: pointer">注销</span>
            </c:if>
        </div>
    </div>
</div>
<script>
    layui.use("layer",function (){
        var layer=layui.layer;
        $(".login").click(function (){
            layer.open({
                type: 2,
                title: '欢迎回来！',
                shadeClose: true,
                shade:0.4,
                maxmin: true, //开启最大化最小化按钮
                area: ['480px', '300px'],
                content: '<%=basePath%>/view/login.jsp'
            });
        })
        $(".loginOut").click(function (){
            $.ajax({
                url:"<%=basePath%>/user?method=loginOut",
                success:function (result){
                    var res=JSON.parse(result);
                    if(result){
                        layer.msg("注销成功");
                        location.reload();
                    }else{
                        layer.msg("注销失败");
                    }
                }
            })
        })
        $(".register").click(function (){
            layer.open({
                type: 2,
                title: '欢迎注册！',
                shadeClose: true,
                shade:0.4,
                maxmin: true, //开启最大化最小化按钮
                area: ['480px', '300px'],
                content: '<%=basePath%>/view/register.jsp'
            });
        })
        $(".getMovie").click(function (){
            var data={
                movieName:$(".doSearch").val(),
                pageCur:0,
                pageSize:10
            };
            window.location.href="<%=basePath%>/movie?method=getMovieByName&data="+encodeURI(JSON.stringify(data));
        })
    })
</script>
</body>
</html>
