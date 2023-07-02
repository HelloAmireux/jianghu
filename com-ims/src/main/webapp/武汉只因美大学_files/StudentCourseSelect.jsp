<%--
  Created by IntelliJ IDEA.
  User: zhaoqingyu
  Date: 2023/6/16
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../main.jsp"%>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>

    <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
    <script src="/js/bootstrap.bundle.min.js"></script>
    <style>
        .adaohang{
            width:500px;
            height:500px;
            margin: 0 auto;
        }
    </style>
    <title>Title</title>
</head>
<body>



<div class="d-flex justify-content-center">
    <form action="${pageContext.request.contextPath}/user?opr=" class="was-validated " method="post" onclick="return checkLogin()">
        <h1 class="h3 mb-3 fw-normal text-center">  自主选课</h1>

        <div class="form-floating">
            <input type="text" class="form-control" id="student_id" name="student_id" placeholder="student_id" required>
            <div class="invalid-feedback">请输入学号！</div>
        </div>
        <div class="form-floating">
            <input type="text" class="form-control" id="course_id" name="course_id" placeholder="course_id" required>
            <div class="invalid-feedback">请输入课程id</div>
        </div>
        <div class="form-floating">
            <input type="text" class="form-control" id="course_name" name="course_name" placeholder="course_name" required>
            <div class="invalid-feedback">请输入课程名称</div>
        </div>
        <button class="w-100 btn btn-lg btn-primary" type="s    ubmit">选择</button>
    </form>
</div>
</body>
</html>
