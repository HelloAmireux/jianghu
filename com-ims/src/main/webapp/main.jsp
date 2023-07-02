<%--
  Created by IntelliJ IDEA.
  User: zhaoqingyu
  Date: 2023/5/11
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>首页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link id="theme-style" rel="stylesheet" href="css/portal.css">
    <script src="js/respond.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <style>
        .a1{
            width:26.5%;
            height:60%;
            top: 60px;
            right:5px;
            position: absolute;
            border-radius: 10px;
            box-shadow: 0px 0px 5px 1px #8c9fc5;
            background-color:#fff;
            background-image: linear-gradient(to bottom right,
            #91defe,
            #99c0f9,
            #bdb6ec,
            #d7b3e3,
            #efb3d5,
            #f9bccc);
        }
        .a2{
            width:87.2%;
            height:32%;
            top:670px;
            right:5px;
            position: absolute;
            border-radius: 10px;
            box-shadow: 0px 0px 5px 1px #8c9fc5;
            background-color:#fff;
        }




        .box {
            position: absolute;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 500px;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
        }

        .ball {
            animation: float 3.5s ease-in-out infinite;
            height: 200px;
            width: 200px;
            border-radius: 50%;
            position: relative;
            /* 为球的背景添加径向渐变，渐变中心在 77% 水平、30% 垂直位置 */
            background: radial-gradient(circle at 77% 30%,
                /* 渐变起点颜色为白色，半径为 5 像素 */
            white 5px,
                /* 渐变颜色从白色平滑过渡到淡蓝色，半径为 8% */
            aqua 8%,
                /* 渐变颜色从淡蓝色平滑过渡到深蓝色，半径为 60% */
            darkblue 60%,
                /* 渐变颜色从深蓝色平滑过渡到淡蓝色，半径为 100% */
            aqua 100%);
            /* 为球添加多重内阴影效果 */
            /* 内部白色阴影，宽度 20 像素 */
            box-shadow: inset 0 0 20px #fff,
                /* 内部淡蓝色阴影，位置偏右 10 像素，宽度 46 像素 */
            inset 10px 0 46px #eaf5fc,
                /* 内部浅蓝色阴影，位置偏右 88 像素，宽度 60 像素 */
            inset 88px 0px 60px #c2d8fe,
                /* 内部淡橙色阴影，位置偏左上方，宽度 100 像素 */
            inset -20px -60px 100px #fde9ea,
                /* 内部淡橙色阴影，位置偏下方，宽度 140 像素 */
            inset 0 50px 140px #fde9ea,
                /* 外部白色阴影，宽度 90 像素 */
            0 0 90px #fff;
        }

        .box:nth-child(2) {
            z-index: -999;
        }

        .box:nth-child(2) .ball {
            left: -80px;
            top: 35px;
            width: 100px;
            height: 100px;
            z-index: -999;
            opacity: .5;
        }

        .box:nth-child(3) .ball {
            left: 80px;
            top: -80px;
            width: 20px;
            height: 20px;
            opacity: .1;
        }

        .shadow {
            background: #b490b27c;
            width: 150px;
            height: 40px;
            top: 70%;
            animation: expand 4s infinite;
            position: absolute;
            border-radius: 50%;
        }

        .box:nth-child(2) .shadow {
            width: 90px;
            height: 20px;
            top: 72.5%;
            left: -75px;
            opacity: .4;
        }

        /* 添加漂浮动画 */
        @keyframes float {
            0% {
                transform: translatey(0px) rotate(-10deg);
            }

            50% {
                transform: translatey(-80px) rotate(10deg);
            }

            100% {
                transform: translatey(0px) rotate(-10deg);
            }
        }

        @keyframes expand {

            0%,
            100% {
                transform: scale(0.5);
            }

            50% {
                transform: scale(1);
            }
        }






        .container {
            width: 180px;
            height: 100px;
            margin: 100px auto;
            /*padding: 15px;*/
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .cloud {
            width: 250px;
        }

        .front {
            padding-top: 45px;
            margin-left: 25px;
            display: inline;
            position: absolute;
            z-index: 11;
            animation: clouds 8s infinite;
            animation-timing-function: ease-in-out;
        }

        .back {
            margin-top: -30px;
            margin-left: 150px;
            z-index: 12;
            animation: clouds 12s infinite;
            animation-timing-function: ease-in-out;
        }

        .right-front {
            width: 45px;
            height: 45px;
            border-radius: 50% 50% 50% 0%;
            background-color: #4c9beb;
            display: inline-block;
            margin-left: -25px;
            z-index: 5;
        }

        .left-front {
            width: 65px;
            height: 65px;
            border-radius: 50% 50% 0% 50%;
            background-color: #4c9beb;
            display: inline-block;
            z-index: 5;
        }

        .right-back {
            width: 50px;
            height: 50px;
            border-radius: 50% 50% 50% 0%;
            background-color: #4c9beb;
            display: inline-block;
            margin-left: -20px;
            z-index: 5;
        }

        .left-back {
            width: 30px;
            height: 30px;
            border-radius: 50% 50% 0% 50%;
            background-color: #4c9beb;
            display: inline-block;
            z-index: 5;
        }

        .sun {
            width: 120px;
            height: 120px;
            background: -webkit-linear-gradient(to right, #fcbb04, #fffc00);
            background: linear-gradient(to right, #fcbb04, #fffc00);
            border-radius: 60px;
            display: inline;
            position: absolute;
        }

        .sunshine {
            animation: sunshines 2s infinite;
        }

        @keyframes sunshines {
            0% {
                transform: scale(1);
                opacity: 0.6;
            }

            100% {
                transform: scale(1.4);
                opacity: 0;
            }
        }

        @keyframes clouds {
            0% {
                transform: translateX(15px);
            }

            50% {
                transform: translateX(0px);
            }

            100% {
                transform: translateX(15px);
            }
        }






        .container1 {
            height: 80px;
            width: 60px;
            position: relative;
            font-family: sans-serif;
            text-align: center;
            top:35px;
            position:fixed;
            top:685px;
            right:200px;
        }

        .container1::before, .container1::after {
            content: "";
            background-color: #fab5704c;
            position: absolute;
        }

        .container1::before {
            border-radius: 50%;
            width: 6rem;
            height: 6rem;

        }

        .container1::after {
            content: "";
            position: absolute;
            height: 3rem;

        }

        .container1 .box1 {
            width: 11.875em;
            height: 15.875em;
            padding: 1rem;
            background-color: rgba(255, 255, 255, 0.074);
            border: 1px solid rgba(255, 255, 255, 0.222);
            -webkit-backdrop-filter: blur(20px);
            backdrop-filter: blur(20px);
            border-radius: .7rem;
            transition: all ease .3s;
        }

        .container1 .box1 {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .container1 .box1 .title1 {
            font-size: 2rem;
            font-weight: 500;
            letter-spacing: .1em
        }

        .container1 .box1 div strong {
            display: block;
            margin-bottom: .5rem;
        }

        .container1 .box1 div p {
            margin: 0;
            font-size: .9em;
            font-weight: 300;
            letter-spacing: .1em;
        }

        .container1 .box1 div span {
            font-size: .7rem;
            font-weight: 300;
        }

        .container1 .box1 div span:nth-child(3) {
            font-weight: 500;
            margin-right: .2rem;
        }

        .container1 .box1:hover {
            box-shadow: 0px 0px 20px 1px #ffbb763f;
            border: 1px solid rgba(255, 255, 255, 0.454);
        }




    </style>

</head>
<body class="app">
<header class="app-header fixed-top">
    <div class="app-header-inner">
        <div class="col-sm-2 offset-sm-10">
            <img src="img/${number}.jpg" height="50">
            <span style="color: grey" style="float: right;color: grey">当前用户:${session_person.getUserName()}</span>
        </div>
        <div id="app-sidepanel" class="app-sidepanel">
            <div id="sidepanel-drop" class="sidepanel-drop"></div>
            <div class="sidepanel-inner d-flex flex-column">
                <a href="#" id="sidepanel-close" class="sidepanel-close d-xl-none">&times;</a>
                <div class="app-branding">
                    <a class="app-logo" href="#">
                        <img class="logo-icon me-2 " src="./bootstrap-icons-1.10.5/book.svg" alt="logo">
                        <a class="text-success">教学管理系统<div class="info">${requestScope.flag }</div></a>
                        <span class="logo-text">&nbsp;</span>
                    </a>
                </div>
                <c:if test="${session_person.getUserIdentify()==0}">
                    <nav id="app-nav-main" class="app-nav app-nav-main flex-grow-1">
                        <ul class="app-menu list-unstyled accordion" >
                            <li class="nav-item">
                                <a class="nav-link active" href="common.action?action=index">
                                    <img class="logo-icon me-2 " src="./bootstrap-icons-1.10.5/house.svg" alt="bootstrap">
                                    <span class="nav-link-text"><img class="logo-icon me-2 " src="/bootstrap-icons-1.10.5/home.svg" alt="logo">首页&nbsp;</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="man.action?action=list">
                                    <img class="logo-icon me-2 " src="./bootstrap-icons-1.10.5/person-plus.svg" alt="bootstrap">
                                    <span class="nav-link-text">选择老师&nbsp;</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <img class="logo-icon me-2 " src="./bootstrap-icons-1.10.5/bi-bookmarks.svg" alt="bootstrap">
                                    <span class="nav-link-text">任务管理&nbsp;</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <img class="logo-icon me-2 " src="./bootstrap-icons-1.10.5/bi-layers.svg" alt="bootstrap">
                                    <span class="nav-link-text">我的任务&nbsp;</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <img class="logo-icon me-2 " src="./bootstrap-icons-1.10.5/person.svg" alt="bootstrap">
                                    <span class="nav-link-text">我的信息&nbsp;</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <img class="logo-icon me-2 " src="./bootstrap-icons-1.10.5/info-circle.svg" alt="bootstrap">
                                    <span class="nav-link-text">帮助&nbsp;</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="login.jsp">Box arrow right
                                    <img class="logo-icon me-2 " src="./bootstrap-icons-1.10.5/box-arrow-right.svg" alt="bootstrap">
                                    <span class="nav-link-text">退出系统&nbsp;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </c:if>
                <c:if test="${session_person.getUserIdentify()==1}">
                    <nav id="app-nav-main" class="app-nav app-nav-main flex-grow-1">
                        <ul class="app-menu list-unstyled accordion">
                            <li class="nav-item">
                                <a class="nav-link active" href="blank.jsp">
                                    <img class="logo-icon me-2 text-success" src="./bootstrap-icons-1.10.5/house.svg" alt="Bootstrap">
                                    <span class="nav-link-text">首页&nbsp;</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath }/user?opr=studentAdmin">
                                    <img class="logo-icon me-2 " src="./bootstrap-icons-1.10.5/person.svg" alt="Bootstrap">
                                    <span class="nav-link-text">学生管理&nbsp;</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath }/user?opr=courseAdmin">
                                    <img class="logo-icon me-2 " src="./bootstrap-icons-1.10.5/receipt-cutoff.svg" alt="Bootstrap">
                                    <span class="nav-link-text">课程管理&nbsp;</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath }/user?opr=classroomAdmin">
                                    <img class="logo-icon me-2 " src="./bootstrap-icons-1.10.5/houses.svg" alt="Bootstrap">
                                    <span class="nav-link-text">教室管理&nbsp;</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath }/user?opr=course_select">
                                    <img class="logo-icon me-2 " src="./bootstrap-icons-1.10.5/database.svg" alt="Bootstrap">
                                    <span class="nav-link-text">选课管理&nbsp;</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <img class="logo-icon me-2 " src="./bootstrap-icons-1.10.5/info-circle.svg" alt="bootstrap">
                                    <span class="nav-link-text">帮助&nbsp;</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="logout.html">
                                    <img class="logo-icon me-2 " src="./bootstrap-icons-1.10.5/box-arrow-right.svg" alt="bootstrap">
                                    <span class="nav-link-text">退出系统&nbsp;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </c:if>
                <c:if test="${session_person.getUserIdentify()==2}">
                    <nav id="app-nav-main" class="app-nav app-nav-main flex-grow-2">
                        <ul class="app-menu list-unstyled accordion">
                            <li class="nav-item">
                                <a class="nav-link active" href="blank.jsp">
                                    <img class="logo-icon me-2 " src="./bootstrap-icons-1.10.5/house.svg" alt="bootstrap">
                                    <span class="nav-link-text">首页&nbsp;</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath }/user?opr=information">
                                    <img class="logo-icon me-2 " src="./bootstrap-icons-1.10.5/person-gear.svg" alt="bootstrap">
                                    <span class="nav-link-text">人员管理&nbsp;</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <img class="logo-icon me-2 " src="./bootstrap-icons-1.10.5/bar-chart.svg" alt="bootstrap">
                                    <span class="nav-link-text">成绩修改&nbsp;</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <img class="logo-icon me-2 " src="./bootstrap-icons-1.10.5/info-circle.svg" alt="bootstrap">
                                    <span class="nav-link-text">帮助&nbsp;</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="login.jsp">
                                    <img class="logo-icon me-2 " src="./bootstrap-icons-1.10.5/box-arrow-right.svg" alt="bootstrap">
                                    <span class="nav-link-text">退出系统&nbsp;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </c:if>


            </div>
        </div>
    </div>


</header>

<div class="a1">
    <div class="shell">
        <div class="box">
            <div class="ball"></div>
            <div class="shadow"></div>
        </div>

        <div class="box">
            <div class="ball"></div>
            <div class="shadow"></div>
        </div>

        <div class="box">
            <div class="ball"></div>
        </div>
    </div>
</div>
<div class="a2">
    <div class="container">
        <div class="cloud front">
            <span class="left-front"></span>
            <span class="right-front"></span>
        </div>
        <span class="sun sunshine"></span>
        <span class="sun"></span>
        <div class="cloud back">
            <span class="left-back"></span>
            <span class="right-back"></span>
        </div>
    </div>

    <div class="container1">
        <div class="box1">
            <span class="title1">Feature Updates</span>
            <div>
                <strong>more pages</strong>
                <p>still being implemented</p>
            </div>
        </div>
    </div>

</div>

<%--<jsp:include page="${mainRignt=null?'blank.jsp':mainRignt}"></jsp:include>--%>
<%--<jsp:include page="blank.jsp"></jsp:include>--%>


<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>