<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>猫眼电影 - 娱乐看猫眼</title>
    <link rel="stylesheet" href="<%=basePath%>/css/main.css">
    <link rel="icon" href="<%=basePath%>/img/favicon.ico">
</head>
<body>
<div class="main">
    <div class="top">
        <div class="top_left">
            <div class="top_left_log myflex_x">
                <img src="<%=basePath%>/img/maoyan.png">
            </div>
            <div class="top_left_city myflex_x">
                武汉
            </div>
            <div class="top_left_navy myflex_x">
                <div style="background-color: rgb(255, 0, 0);color:white" class="navy myflex_x">首页</div>
                <div class="navy myflex_x">电影</div>
                <div class="navy myflex_x">影院</div>
                <div class="navy myflex_x">演出</div>
            </div>
        </div>

        <div class="top_right">
            <div class="app myflex_x">
                <img src="<%=basePath%>/img/app.png">
                <span>APP下载</span>
            </div>
            <div class="user myflex_x">
                <span>登入</span>
                <span>注册</span>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="content_main">
            <div class="playhot">
                <div class="playhot_title">
                    <span style="font-size: 23px;">正在热映（62部）</span>
                    <span style="font-family: “华文宋体”;">全部 ></span>
                </div>
                <div class="playhot_move">
                    <div class="move">
                        <div class="movie namebg_shadow">
                            <img src="<%=basePath%>/img/dibaxianyiren_1.jpg" alt="">
                            <div class="img_bottom">
                                <div class="img_bottom_left"><span style="color: white;font-size: 17px;">第八个嫌疑人</span></div>
                                <div class="img_bottom_right"><i style="color: rgb(253, 196, 51);font-size: 20px;">8.<i style="color: rgb(253, 196, 51);font-size: 8px;">9</i></i></div>
                            </div>
                        </div>
                        <div class="buyticket myflex_x">
                            <span>购票</span>
                        </div>
                    </div>
                    <div class="move">
                        <div class="movie namebg_shadow">
                            <img src="<%=basePath%>/img/yingwusha_2.jpg" alt="">
                            <div class="img_bottom">
                                <div class="img_bottom_left"><span style="color: white;font-size: 17px;">鹦鹉杀</span></div>
                                <div class="img_bottom_right"><i style="color: rgb(253, 196, 51);font-size: 20px;">6.<i style="color: rgb(253, 196, 51);font-size: 8px;">8</i></i></div>
                            </div>
                        </div>
                        <div class="buyticket myflex_x">
                            <span>购票</span>
                        </div>
                    </div>
                    <div class="move">
                        <div class="movie namebg_shadow">
                            <img src="<%=basePath%>/img/fengshen_3.jpg" alt="">
                            <div class="img_bottom">
                                <div class="img_bottom_left"><span style="color: white;font-size: 17px;">封神第一部</span></div>
                                <div class="img_bottom_right"><i style="color: rgb(253, 196, 51);font-size: 20px;">7.<i style="color: rgb(253, 196, 51);font-size: 8px;">1</i></i></div>
                            </div>
                        </div>
                        <div class="buyticket myflex_x">
                            <span>购票</span>
                        </div>
                    </div>
                    <div class="move">
                        <div class="movie">
                            <img src="<%=basePath%>/img/gansidui_4.jpg" alt="">
                            <div class="img_bottom">
                                <div class="img_bottom_left"><span style="color: white;font-size: 17px;">敢死队四：最终章</span></div>
                                <div class="img_bottom_right"><i style="color: rgb(253, 196, 51);font-size: 20px;">5.<i style="color: rgb(253, 196, 51);font-size: 8px;">6</i></i></div>
                            </div>
                        </div>
                        <div class="buyticket myflex_x">
                            <span>购票</span>
                        </div>
                    </div>
                    <div class="move">
                        <div class="movie">
                            <img src="<%=basePath%>/img/weinisi_5.jpg" alt="">
                            <div class="img_bottom">
                                <div class="img_bottom_left"><span style="color: white;font-size: 17px;">威尼斯惊魂夜</span></div>
                                <div class="img_bottom_right"><i style="color: rgb(253, 196, 51);font-size: 20px;">7.<i style="color: rgb(253, 196, 51);font-size: 8px;">3</i></i></div>
                            </div>
                        </div>
                        <div class="buyticket myflex_x">
                            <span>购票</span>
                        </div>
                    </div>
                    <div class="move">
                        <div class="movie namebg_shadow">
                            <img src="<%=basePath%>/img/aobenhaimo_6.jpg" alt="">
                            <div class="img_bottom">
                                <div class="img_bottom_left"><span style="color: white;font-size: 17px;">奥本海默</span></div>
                                <div class="img_bottom_right"><i style="color: rgb(253, 196, 51);font-size: 20px;">9.<i style="color: rgb(253, 196, 51);font-size: 8px;">5</i></i></div>
                            </div>
                        </div>
                        <div class="buyticket myflex_x">
                            <span>购票</span>
                        </div>
                    </div>
                    <div class="move">
                        <div class="movie namebg_shadow">
                            <img src="<%=basePath%>/img/xueba_7.jpg" alt="">
                            <div class="img_bottom">
                                <div class="img_bottom_left"><span style="color: white;font-size: 17px;">学爸</span></div>
                                <div class="img_bottom_right"><i style="color: rgb(253, 196, 51);font-size: 20px;">4.<i style="color: rgb(253, 196, 51);font-size: 8px;">2</i></i></div>
                            </div>
                        </div>
                        <div class="buyticket myflex_x">
                            <span>购票</span>
                        </div>
                    </div>
                    <div class="move">
                        <div class="movie namebg_shadow">
                            <img src="<%=basePath%>/img/haoxiangmeinameren_8.jpg" alt="">
                            <div class="img_bottom">
                                <div class="img_bottom_left"><span style="color: white;font-size: 17px;">好像没那么热血沸腾</span></div>
                                <div class="img_bottom_right"><i style="color: rgb(253, 196, 51);font-size: 20px;">6.<i style="color: rgb(253, 196, 51);font-size: 8px;">6</i></i></div>
                            </div>
                        </div>
                        <div class="buyticket myflex_x">
                            <span>购票</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="today">
                <div class="header">
                    <span style="font-size: 24px;color: red;">今日票房</span>
                </div>
                <div class="movie_top">
                    <div class="top_img">
                        <img src="<%=basePath%>/img/abhm.jpg" alt="">
                    </div>
                    <div class="movie_text">
                        <div class="text_top">
                            <span style="font-size: 20px;">奥本海默</span>
                        </div>
                        <div class="text_bottom">
                            <span style="font-size: 15px;color: red;">399.99万</span>
                        </div>
                    </div>
                </div>
                <div class="rank_content">
                    <div class="movie_1">
                        <div class="movie_text_left">
                            <i style="color: rgb(255, 68, 68);font-size: 20px;">2</i>
                            <span>孤注一掷</span>
                        </div>
                        <div class="movie_text_right">
                            <span style="color: red;font-size: 14px;">309.73万</span>
                        </div>
                    </div>
                    <div class="movie_1">
                        <div class="movie_text_left">
                            <i style="color: rgb(255, 113, 113);font-size: 20px;">3</i>
                            <span>敢死队四：最终章</span>
                        </div>
                        <div class="movie_text_right">
                            <span style="color: red;font-size: 14px;">299.12万</span>
                        </div>
                    </div>
                    <div class="movie_1">
                        <div class="movie_text_left">
                            <i style="color:  rgb(117, 117, 117);font-size: 20px;">4</i>
                            <span>封神第一部</span>
                        </div>
                        <div class="movie_text_right">
                            <span style="color: red;font-size: 14px;">245.54万</span>
                        </div>
                    </div>
                    <div class="movie_1">
                        <div class="movie_text_left">
                            <i style="color: rgb(117, 117, 117);font-size: 20px;">5</i>
                            <span>第八嫌疑人</span>
                        </div>
                        <div class="movie_text_right">
                            <span style="color: red;font-size: 14px;">239.95万</span>
                        </div>
                    </div>
                </div>
                <div class="statistics">
                    <div class="statistics_vertical_text myflex_x">
                        <span style="writing-mode: vertical-rl;font-size: 21px;color: white;">今日大盘</span>
                    </div>
                    <div class="statistics_right">
                        <div class="statistics_right_top">
                            <span style="font-size: 34px;color: #fb5252;font-weight: 550;">9999.9 <span style="font-size: 15px;color: #fb5252;">万</span></span>
                            <span style="font-size: 15px;color: #fb5252;font-family: STSONG;">查看更多></span>
                        </div>
                        <div class="statistics_right_bottom">
                            <span style="font-size: 10px;color: grey;">北京时间 20:52:51</span>
                            <span style="font-size: 10px;color: grey;">猫眼专业版实时票房数据</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <p class="friendly-links">
        关于猫眼 :
        <a href="https://ir.maoyan.com/Company-Information">关于我们</a>
        <span></span>
        <a href="https://ir.maoyan.com/Board-Members">董事会成员</a>
        <span></span>
        <a href="https://ir.maoyan.com">投资者关系</a>
        &nbsp;&nbsp;&nbsp;&nbsp;
        友情链接 :
        <a href="http://www.meituan.com" data-query="utm_source=wwwmaoyan">美团网</a>
        <span></span>
        <a href="http://www.gewara.com" data-query="utm_source=wwwmaoyan">格瓦拉</a>
        <span></span>
        <a href="http://i.meituan.com/client" data-query="utm_source=wwwmaoyan">美团下载</a>
        <span></span>
        <a href="https://www.huanxi.com" data-query="utm_source=maoyan_pc">欢喜首映</a>
    </p>
    <p class="friendly-links">
        商务合作邮箱：v@maoyan.com
        客服电话：10105335
        违法和不良信息/涉未成年人有害信息举报电话：4006018900
    </p>
    <p class="friendly-links">
        用户举报/涉未成年人有害信息举报邮箱：tousujubao@meituan.com
        舞弊线索举报邮箱：wubijubao@maoyan.com
    </p>
    <p class="friendly-links  credentials">
        <a href="/about/licence/1" target="_blank">中华人民共和国增值电信业务经营许可证 京B2-20190350</a>
        <span></span>
        <a href="/about/licence/4" target="_blank">营业性演出许可证 京演（机构）（2019）4094号</a>
    </p>
    <p class="friendly-links  credentials">
        <a href="/about/licence/3" target="_blank">广播电视节目制作经营许可证 （京）字第08478号</a>
        <span></span>
        <a href="/about/licence/2" target="_blank">网络文化经营许可证 京网文（2022）1334-041号 </a>
    </p>
    <p class="friendly-links  credentials">
        <a href="/about/licence/6" target="_blank">艺术品经营单位备案证明  京东艺（2022）0095号 </a>
    </p>
    <p class="friendly-links  credentials">
        <a href="/rules/agreement" target="_blank">猫眼用户服务协议 </a>
        <span></span>
        <a href="/rules/rule" target="_blank">猫眼平台交易规则总则 </a>
        <span></span>
        <a href="/rules/privacy" target="_blank">隐私政策 </a>
    </p>
    <p class="friendly-links  credentials">
        <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010102003232">京公网安备
            11010102003232号</a>
        <span></span>
        <a href="http://beian.miit.gov.cn/">京ICP备16022489号-1</a>
    </p>
    <p>北京猫眼文化传媒有限公司</p>
    <p>
        &copy;<span class="my-footer-year">2016</span>
        猫眼电影 www.maoyan.com</p>
    <div class="myflex_x">
        <a href="http://sq.ccm.gov.cn:80/ccnt/sczr/service/business/emark/toDetail/350CF8BCA8416C4FE0530140A8C0957E">
            <img src="https://p0.meituan.net/moviemachine/e54374ccf134d1f7b2c5b075a74fca525326.png" />
        </a>
        <a href="/about/licence/5" target="_blank">
            <img src="https://p1.meituan.net/moviemachine/805f605d5cf1b1a02a4e3a5e29df003b8376.png" />
        </a>
        <a href="https://www.12377.cn">
            <img src="https://p0.meituan.net/scarlett/3cd2a9b7dc179531d20d27a5fd686e783787.png" />
        </a>
    </div>
</div>
</body>
</html>