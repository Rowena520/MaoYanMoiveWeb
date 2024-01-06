<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="<%=basePath%>/css/details.css">
</head>
<body>

    <div class="main">
        <%@include file="top.jsp"%>
        <div class="content">
            <div class="movie_img">
                <img src="<%=basePath%>/img/${movie.movieImg}" alt="">
            </div>
            <div class="movie_infor">
                <div class="infor">
                    <span style="font-size: 25px;font-weight: 700;">${movie.movieName}</span>
                    <br>
                    <span style="font-size: 17px;">Dust To Dust</span>
                    <br>
                    <span style="font-size: 14px;">剧情 犯罪</span>
                    <br>
                    <span style="font-size: 14px;">中国大陆 / 111分钟</span>
                    <br>
                    <span style="font-size: 14px;">2023年9月25日 19点37分中国大陆上映</span>
                </div>
                <div class="button">
                    <div class="text_want myflex_x">想看</div>
                    <div class="text_score myflex_x">评分</div>
                    <div id="purchase_ticket" class="purchase_ticket myflex_x" data-id="${requestScope.movie.id}" onclick="goCinema()">特惠购票</div>
                </div>
            </div>
            <div class="movie_core">
                <div class="koubei">
                    <div class="koubei_text"><span style="font-size: 14px;">猫眼口碑</span></div>
                    <div class="koubei_statistics"><span style="font-size: 32px;color: rgb(255, 166, 33);">8.9</span></div>
                </div>
                <div class="piaofang">
                    <div class="piaofeng_text"><span style="font-size: 14px;">累计票房</span></div>
                    <div class="piaodang_statistics"><span style="font-size: 32px;">4.27</span><span style="font-size: 11px;">亿</span></div>
                </div>
            </div>
        </div>
    </div>
<script>
    function goCinema(){
        //点击按钮跳转到电影列表页
        var id=document.getElementById("purchase_ticket").getAttribute("data-id");
        window.location.href="<%=basePath%>/cinema?method=getCinema&id="+id+"&pageIndex=0&pageSize=10";
    }
</script>
</body>
</html>