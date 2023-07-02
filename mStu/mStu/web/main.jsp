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
    <script src="js/respond.min.js"></script>
    <style>
        .daohang{
            width:150px;
            height:910px;
            float: left;
            background-color:#454d55;
        }
        .s{
            float: right;
        }
    </style>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">

    <a class="navbar-brand" href="#">学生管理系统</a>

        <div class="col-sm-1 offset-sm-9">
        <span style="float: right;color: grey">当前用户:${session_person.userName}</span>
    </div>
    <div class="col-sm-2 ">
            <a href="#">修改密码</a>
    </div>
</nav>

<div class="daohang">
    <c:if test="${session_person.getUserIdentify()==0}">
        <nav class="navbar bg-dark navbar-dark">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href=""common.action?action=index">查看首页</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="man.action?action=list">选择老师</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">任务管理</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">我的任务</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">我的信息</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="outLogin">退出系统</a>
                </li>
            </ul>
        </nav>
    </c:if>
    <c:if test="${session_person.getUserIdentify()==1}">
        <nav class="navbar bg-dark navbar-dark">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href=""common.action?action=index">查看首页</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="man.action?action=list">学生管理</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">任务管理</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">我的信息</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="outLogin">退出系统</a>
                </li>
            </ul>
        </nav>
    </c:if>

    <c:if test="${session_person.getUserIdentify()==2}">
        <nav class="navbar bg-dark navbar-dark ">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href=""common.action?action=index">查看首页</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="man.action?action=list">人员管理</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">任务管理</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">我的信息</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="outLogin">退出系统</a>
                </li>
            </ul>
        </nav>
    </c:if>

</div>

<jsp:include page="${mainRignt=null?'blank.jsp':mainRignt}"></jsp:include>




<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
