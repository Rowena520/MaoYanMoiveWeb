<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%
/*获取项目的根路径*/
String path = request.getContextPath();
String basePath = request.getScheme()+"://" + request.getServerName()+":"+request.getServerPort()+path+"/";
/*basePath就是得到的跟路径类似于：http://localhost:8081/pinduoduo/*/
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="icon" href="<%=basePath%>/img/favicon.ico">
    <link rel="stylesheet" href="<%=basePath%>/css/playing.css">
</head>
<body>
<%@include file="top.jsp"%>
    <div class="main">

        <div class="movieInfor">
            <div>
                <h1 style="display: inline-block;">好想和你在一起</h1>
                <span style="display:inline-block;font-size: 24px;color: #faaf00;">10.0</span><span style="display:inline-block;color: #faaf00;">分</span>
            </div>
            <div class="movieIntro">
                <div><span class="key">时长：</span><span class="value">520分钟</span></div>
                <div><span  class="key">类型：</span><span  class="value">爱情，离别</span></div>
                <div><span class="key">主演：</span><span class="value">易伟，Sophie</span></div>
            </div>
        </div>
        <div class="playingList">
            <table class="playingTable" style="border-collapse: collapse;">
                <tr>
                    <th><span>放映时间</span></th>
                    <th><span>语言版本</span></th>
                    <th><span>放映厅</span></th>
                    <th><span>售价（元）</span></th>
                    <th><span>选座购票</span></th>
                </tr>
                <c:forEach items="${requestScope.list}" var="item">
                    <c:forEach items="${item}" var="yingting">
                        <tr>
                            <td>${yingting.playingTime}</td>
                            <td>国语</td>
                            <td>${yingting.yingting}</td>
                            <td><span style="font-size: 12px;color: #f03d37;font-weight: 700;">￥</span>
                                <span class="price" style="color: #f03d37;font-weight: 700;font-size: 18px;">${requestScope.movie.getPriceByDiscount(yingting.discount)}</span></td>
                            <%--观影时间的id--%>
                            <td><input type="button" data-id="${yingting.id}" class="buyTicket" value="选座购票"></td>
                        </tr>
                    </c:forEach>
                </c:forEach>
            </table>
        </div>
    </div>
<script>
    $(".buyTicket").click(function (){
        //当前折扣后的电影价格
        //表示触发事件的当前按钮对象
        var price= $(this).parent().parent().find(".price").text();
        //点击选座购票跳转到选座页面
        var id=$(this).attr("data-id");
        window.location.href="<%=basePath%>/seat?method=getSeat&playingId="+id+"&price="+price;
    })
</script>
</body>
</html>