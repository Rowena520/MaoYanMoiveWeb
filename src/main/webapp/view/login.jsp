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
    <title>Title</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%--    引入--%>
    <script src="<%=basePath%>/js/jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/layui-v2.7.6/layui/css/layui.css">
    <script src="<%=basePath%>/layui-v2.7.6/layui/layui.js"></script>
    <style>
        body {
            background: linear-gradient(to right, #df89b5, #bfd9fe);
        }

        .userName,
        .password {
            width: 230px;
            margin: 20px 0;
            outline: none;
            border: 0;
            padding: 10px;
            border-bottom: 3px solid rgb(255, 34, 123);
            font: 900 16px '';
        }

        .pas {
            margin-top: -8px;
            margin-bottom: 10px;
        }


        .buts {
            width: 230px;
            height: 60%;
        }

        .buts>input {
            width: 50px;
            height: 60%;
        }

        .loginForm {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
        }

        .myflex {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-direction: row;
        }

        .forget {
            float: right;
            margin: 140px 43px;
            padding-left: 88px;
            position: absolute;
        }

        a {
            text-decoration: none;
        }

        #buttons {
            background: linear-gradient(to right top, #e47171, #f441a5);

            border: none;
            border-radius: 9px;
            width: 100px;
            height: 40px;
            text-align: center;
            box-shadow: 7px 7px 10px rgba(112, 110, 110, 0.5);
            cursor: pointer;
            letter-spacing: 10px;
            font-size: 20px;
            text-align: center;
            transition: 0.3s ease;
        }

        #buttons:hover {
            transform: scale(1.1);
        }
    </style>
</head>

<body>
<div class="main">
    <!--在页面中带有输入框，以及提交的这类标签，整体叫做form表单-->
    <form class="loginForm" action="" method="get" onsubmit="return false">
        <div class="user">
            <!-- <label style="font-size: 30px;font-family: YaHei;">ACCOUNT:</label> -->
            <input id="userName" class="userName" type="text" name="userName" placeholder="请输入您的账号">
        </div>
        <div class="pas">
            <!-- <label style="font-size: 30px;font-family: KaiTi">PASSWORD:</label> -->
            <input id="password" class="password" type="password" name="password" placeholder="请输入您的密码">
        </div>
        <a href="#" class="forget">Forget the password?</a>
        <div class="buts myflex">
            <input style="margin-right: 10px" type="submit" value="登录" class="doSubm" id="buttons">
            <input type="reset" id="buttons">
        </div>
    </form>
</div>
<script>
    //校验账号
    var userPatternResult=false;
    $(".userName").change(function (event){
        var userName=event.target.value;

        var userPattern=/^[0-9a-zA-Z]{5,12}$/;
        var res=userPattern.test(userName);
        if(!res){
            layer.tips('你的账号格式不正确！', '#userName',
                {tips:[4,'#f56969'],time:2000,area: 'auto',maxWidth:500,tipsMore:true})
        }else{
            userPatternResult=true;
        }
    })
    //校验密码
    var passwordPatternResult=false;
    $(".password").change(function (event){
        var password=event.target.value;
        var passwordReg=/^[0-9a-zA-Z]{5,12}$/;
        var res=passwordReg.test(password);
        if(!res){
            layer.tips('您输入的密码格式不正确!', '#password',
                {tips:[4,'#f56969'],time:2000,area: 'auto',maxWidth:500,tipsMore:true})
        }else{
            passwordPatternResult=true;
        }
    })

    $(".doSubm").click(function (){
        if(userPatternResult && passwordPatternResult){

        //主流的数据格式--json,{key:value,key,value}
            $.ajax({
                url:"<%=basePath%>/user?method=login",//ajax发送后端请求地址
                type:"get",
                data: $(".loginForm").serialize(),
                success:function (result){
                    //success是ajax发送请求到后端，后端再响应数据给ajax后，由success来接受后端的数据，
                    //前端将user对象中的数据渲染到前端页面
                    var res=JSON.parse(result);
                    if(res ==null){
                        alert("账号密码不正确！")
                    }else{
                        //登录成功：1，给用户一个提示，2，自动关闭当前登录从窗口，并在页面显示欢迎用户
                        //alert("登录成功！")
                        layer.msg('登录成功', {
                            icon: 1,
                            time: 2000 //2秒关闭（如果不配置，默认是3秒）
                        }, function(){
                            //do something，当这个提示关闭后需要做的事情
                            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
                            parent.layer.close(index); //再执行关闭
                            parent.location.reload();
                        });
                    }
                }
            })
        }else{
            layer.msg('请输入正确的账号密码!');
        }
    })
</script>
</body>

</html>