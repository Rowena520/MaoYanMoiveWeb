<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    /*获取项目的根路径*/
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://" + request.getServerName()+":"+request.getServerPort()+path+"/";
    /*basePath就是得到的跟路径类似于：http://localhost:8081/pinduoduo/*/
%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="icon" href="<%=basePath%>/img/favicon.ico">
    <link rel="stylesheet" href="<%=basePath%>/css/buyTicket.css">
    <script src="jquery-3.7.1.min.js"></script>
</head>

<body>
<%@include file="top.jsp"%>
    <div class="main">
        <div class="content myflex_x">
            <div class="seats">
                <div class="seatType myflex_x">
                    <div>
                        <img src="<%=basePath%>/img/wei.png" alt="">
                        <span>可选座位</span>
                    </div>
                    <div>
                        <img src="<%=basePath%>/img/yi.png" alt="">
                        <span>已选座位</span>
                    </div>
                    <div>
                        <img src="<%=basePath%>/img/shou.png" alt="">
                        <span>已售座位</span>
                    </div>
                </div>
                <div class="screen">银幕中央</div>
                <div class="seatProcession">
                    <div class="rowId">
                        <span>1</span>
                        <span>2</span>
                        <span>3</span>
                        <span>4</span>
                        <span>5</span>
                        <span>6</span>
                        <span>7</span>
                        <span>8</span>
                        <span>9</span>
                    </div>
                    <table style="width: 80%;">
                        <c:forEach items="${requestScope.seat.seatList}" var="list" varStatus="colSta">
                            <tr>
                                <c:forEach items="${list}" var="seat" varStatus="rowSta">
                                    <td>
                                        <c:if test="${seat==0}">
                                            <img class="wei" data-num="${colSta.index},${rowSta.index}" data-type="${seat}" src="<%=basePath%>/img/wei.png" alt="">
                                        </c:if>
                                        <c:if test="${seat==1}">
                                            <img src="<%=basePath%>/img/shou.png" alt="">
                                        </c:if>
                                    </td>
                                </c:forEach>
                            </tr>
                        </c:forEach>

                    </table>
                </div>

            </div>
            <div class="ticketInfor">
                <div class="movie_infor flex_x">
                    <div class="movie_img">
                        <img src="<%=basePath%>/img/${requestScope.allMap.movieImg}" alt="">
                    </div>
                    <div class="movie_text">
                        <p class="name text-ellipsis">${requestScope.allMap.movieName}</p>
                        <div class="info_item">
                            <span>类型：</span>
                            <span class="value">悬疑,动作,剧情</span>
                        </div>
                        <div class="info_item">
                            <span>时长：</span>
                            <span class="value">119分钟</span>
                        </div>
                    </div>
                </div>
                <div class="show_infor">
                    <div class="info_item">
                        <span>影院 :</span>
                        <span class="value text-ellipsis">${requestScope.allMap.cinema}</span>
                    </div>
                    <div class="info_item">
                        <span>影厅 :</span>
                        <span class="value text-ellipsis">${requestScope.allMap.yingting}</span>
                    </div>
                    <div class="info_item">
                        <span>版本 :</span>
                        <span class="value text-ellipsis">国语2D</span>
                    </div>
                    <div class="info_item">
                        <span>场次 :</span>
                        <span class="value text-ellipsis screen">${requestScope.allMap.playingTime}</span>
                    </div>
                    <div class="info_item">
                        <span>票价 :</span>
                        <span class="value text-ellipsis">￥<span class="price">${requestScope.price}</span>/张</span>
                    </div>
                </div>
                <div class="ticket_infor">
                    <div class="no-ticket">
                        <p class="buy-limit">座位：一次最多选6个座位</p>
                        <p class="no-selected">请<span style="color: #f03d37;">点击左侧</span>座位图选择座位</p>
                    </div>
                    <div class="has-ticket" style="display:none">
                        <span class="text">座位：</span>
                        <div class="ticket-container" data-limit="6"></div>
                    </div>
                    <div class="total-price">
                        <span>总价 : </span>
                        <span style="font-size: 15px;color: #f03d37;">￥</span>
                        <span class="total" style="font-size: 24px;color: #f03d37;">0</span>
                    </div>
                </div>
                <div class="confirm_phone">
                    <div>
                        <input class="phone" type="text" placeholder="请输入手机号码">
                    </div>
                    <div class="get_number">
                        <input type="text" id="verificationInput" placeholder="请输入验证码">
                        <span id="getVerification" onclick="generateVerificationCode()">获取验证码</span>
                    </div>
                    <div class="buttons">
                        <input type="button" data-id="${requestScope.seat.id}" class="doPlay" value="确认选座">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function generateVerificationCode() {
            // 生成验证码的逻辑，这里简化为一个随机数
            const verificationCode = Math.floor(Math.random() * 10000);

            // 将验证码填充到输入框
            document.getElementById("verificationInput").value = verificationCode;
        }

        var chooseTotal=0;//记录当前用户勾选座位的数量
        chooseArray=new Array(6);//记录当前用户选座的编号
        $(".wei").click(function (){
            var type =$(this).attr("data-type");
            var num =$(this).attr("data-num");
            if(type=="0"){
                if(chooseTotal<6){
                    //此时表示用户勾选了这个座位
                    $(this).attr("src","<%=basePath%>/img/yi.png");
                    $(this).attr("data-type","2");
                    chooseTotal++;
                }else{
                    alert("一次最多选座六个座位")
                }
            }else {
                //取消座位勾选
                $(this).attr("src","<%=basePath%>/img/wei.png");
                $(this).attr("data-type","0");
                chooseTotal--;
            }
            //勾选座位或者取消座位的时候，使用计算总价这个函数
            countTatal();
        })

        //计算总价
        function countTatal(){
            //获取当前电影的单价
            var price=Number($(".price").text());
            var total=chooseTotal*price;
            $(".total").text(total);
        }

        //添加座位
        function addSeat(num){
            for(var i=0;i<chooseArray.length;i++){
                if(chooseArray[i]==undefined){
                    chooseArray[i]=num;
                    //添加成功后，结束循环
                    break;
                }
            }
        }

        //取消座位
        function removeSeat(num){
            for(var i=0;i<chooseArray.length;i++){
                if(chooseArray[i]==num){
                    chooseArray[i]=undefined;
                    //移除成功后，结束循环
                    break;
                }
            }
        }

        $(".doPlay").click(function (){
            var id=$(this).attr("data-id");
            //var total = $(".total").text(); // 获取计算出的总价
            $.ajax({
                url:"<%=basePath%>/seat?method=updateSeat",
                /*前端在发生基础数据到后端时（数字，字符串）,无需对这些数据做处理
                * 但是如果要传输数组，集合等复杂数据时，需要先试用js将数据进行转字符串
                * 转字符串的方式是JSON.stringify（）来实现的
                * 转字符串的原因是避免在传输数据时到时这些数据被格式化，后台无法正常获取*/
                data:{"chooseArray":JSON.stringify(chooseArray),seatId:id},//,totalPrice: total
                success:function (result){
                    var res=Number(result);
                    if(res<=0){
                        alert("座位选择失败！")
                    }else{
                        alert("座位选择成功！")
                        //window.location.reload();
                        window.location.href="<%=basePath%>/test?method=doTest"
                    }
                }
            })

        })
    </script>
</body>

</html>