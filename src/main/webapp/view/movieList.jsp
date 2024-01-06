<%
    /*获取项目的根路径*/
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://" + request.getServerName()+":"+request.getServerPort()+path+"/";
    /*basePath就是得到的跟路径类似于：http://localhost:8081/pinduoduo/*/
%>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2023/12/11
  Time: 18:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=basePath%>/css/movieList.css">
    <script src="<%=basePath%>/js/jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/layui-v2.7.6/layui/css/layui.css">
    <script src="<%=basePath%>/layui-v2.7.6/layui/layui.js"></script>
</head>
<body>
<%@include file="top.jsp"%>
    <div class="main myflex_x">

        <input class="movieName" hidden type="text" value="${requestScope.movieName}">
        <div class="playhot">
            <div class="playhot_title">
                <span style="font-size: 23px;">搜索如下</span>
            </div>
            <div class="playhot_move">
                <%--EL表达式---￥{}，里面可以写脚本代码--%>
                <c:forEach items="${requestScope.movieList}" var="movie">
                    <div class="move" data-movieId="${movie.id}" onclick="goDetails(this)">
                            <%--this：此处的this表示触发点击事件的标签--%>
                        <div class="movie namebg_shadow">
                            <img src="<%=basePath%>/img/${movie.movieImg}" alt="">
                            <div class="img_bottom">
                                <div class="img_bottom_left"><span style="color: white;font-size: 17px;">${movie.movieName}</span></div>
                                <div class="img_bottom_right"><i style="color: rgb(253, 196, 51);font-size: 20px;">8.<i style="color: rgb(253, 196, 51);font-size: 8px;">9</i></i></div>
                            </div>
                        </div>
                        <div class="buyticket myflex_x">
                            <span>购票</span>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div class="moviePage" id="moviePage">

        </div>
    </div>

<script>
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
                    var data={
                        movieName:$(".movieName").val(),
                        pageIndex:(obj.curr-1)*obj.limit,
                        pageSize:obj.limit
                    }
                    window.location.href="<%=basePath%>/movie?method=getMovieByName&data="+encodeURI(JSON.stringify(data))+"#!fenye="+obj.curr;
                }
            }
        })
    })
</script>
</body>
</html>
