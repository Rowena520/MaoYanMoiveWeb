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
    <link rel="stylesheet" href="<%=basePath%>/css/cinema.css">
    <script src="<%=basePath%>/js/jquery-3.7.1.min.js"></script>
</head>

<body>
<%@include file="top.jsp"%>
    <!-- 先定页面的基础布局，然后写div,再给div设置宽高和颜色,最后再对这些div进行布局设置 -->
    <div class="content">
        <div class="title">
            <span style="font-size: 30px;font-weight: bold;">影院列表</span>
        </div>
        <div class="cinemaList">
            <c:forEach items="${requestScope.cinemaList}" var="cinema">
                <div class="cinema">
                    <div class="cinemaInfor">
                        <span>${cinema.cinema},${cinema.id}</span>
                        <span style="font-size: 14px;line-height: 14px;color: #999;">地址：${cinema.address}</span>
                        <div class="type">
                            <c:forEach items="${cinema.type.split(',')}" var="type">
                                <span>${type}</span>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="cinemaTicket myflex_x">
                        <div class="price">
                            <span style="font-size: 13px;letter-spacing: -7px;">￥</span>
                            <span style="font-weight: 700;">${requestScope.movie.getPriceByDiscount(cinema.discount)}</span>
                            <span style="font-size: 12px;color:#999;letter-spacing: -7px;">起</span>
                            <span class="cinema-distance">9.9km</span>
                        </div>
                        <div class="button myflex_x">
                            <%--使用隐藏域技术，设置属性--%>
                            <input data-cinema="${cinema.id}" data-movie="${requestScope.movie.id}" type="button" class="buyTicket" value="选座购票">
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="cinemaPage" id="cinemaPage"></div>
    </div>
<script>
    //点击选座购票，跳转到影厅选择页面
    $(".buyTicket").click(function (){
        //将影院id和电影id传输给后端
        var cinemaId = $(this).attr("data-cinema");
        var movieId = $(this).attr("data-movie");
        window.location.href="<%=basePath%>/yingting?method=getYingting&cinemaId="+cinemaId+"&movieId="+movieId;
    })

    layui.use('laypage',function (){
        var laypage=layui.laypage
        //执行一个laypage
        laypage.render({
            elem:'cinemaPage',//注意，这里的 test1 是 ID，不用加 # 号
            count:50,//数据总数，从服务端得到
            limit:10,
            theme:"#f03d37",
            curr: location.hash.replace('#!fenye=', '') ,  //获取起始页
            hash: 'fenye', //自定义hash值
            jump: function(obj, first){
            //obj包含了当前分页的所有参数，比如：
            console.log(obj.curr); //得到当前页，以便向服务端请求对应页的数据。
            console.log(obj.limit); //得到每页显示的条数

            //首次不执行
            if(!first){
                var id=$(".buyTicket").attr("data-movie");
                //do something
                var pageIndex=(obj.curr-1)*obj.limit;
                var pageSize=obj.limit;
                window.location.href="<%=basePath%>/cinema?method=getCinema&id="+id+"&pageIndex="+pageIndex+"&pageSize="+pageSize+"#!fenye="+obj.curr;
            }
        }
        })
    })

</script>
</body>
</html>