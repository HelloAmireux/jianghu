<%--
  Created by IntelliJ IDEA.
  User: zhaoqingyu
  Date: 2023/6/16
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="main.jsp"%>
<html>
<head>
  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">

  <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
  <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>

  <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
  <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
  <script src="/js/bootstrap.bundle.min.js"></script>
  <title>Title</title>
</head>
<body>
<div style="margin-left:200px;margin-top:100px;width:1000px;">
  <div class="panel panel-primary">
    <div class="panel-heading">
      <h3 class="panel-title">课表查询</h3>
    </div>
    <div class="panel-body">
      <div style="display:inline-block;">
        <div style="float:left;padding:6px;">
          <span>学号：</span>
        </div>
        <div style="float:left;">
          <input id="student_id" class="form-control" style="width:200px;" placeholder="请输入学号" />
        </div>
        <div style="float:left;padding:6px;">
          <span>姓名：</span>
        </div>
        <div style="float:left;">
          <input id="student_name" class="form-control" style="width:200px;" placeholder="请输入姓名" />
        </div>
        <div style="float:left;margin-left:20px;">
          <button id="query" class="btn btn-primary">查询</button>
        </div>
      </div>
    </div>
  </div>
  <table id="table"></table>
</div>

</body>
</html>
