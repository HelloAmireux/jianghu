<%--
  Created by IntelliJ IDEA.
  User: 29864
  Date: 2023/6/19
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        .aa{
            width:1000px;
            height:30px;
        }

    </style>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/bootstrap-table.min.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>

    <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <title>课程管理</title>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<div class="container ">
    <div class="row" style="padding-top: 10px;">
        <div class="col-md-2 offset-md-2">
            <input type="text" class="form-control" id="course_id" placeholder="请输入课程ID"/>
        </div>
        <div class="col-md-2">
            <input type="text" class="form-control" id="course_name" placeholder="请输入课程名称"/>
        </div>
        <div class="col-md-1">
            <button class="btn btn-primary btn-sm" id="searchBtn">查询</button>
        </div>
        <div class="col-md-1">
            <button class="btn btn-sm btn-info" id="resetBtn">重置</button>
        </div>
        <div class="col-md-2">
            <button class="btn btn-sm btn-info" id="">添加信息</button>
        </div>
    </div>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>课程ID</th>
            <th>课程名称</th>
            <th>课程老师</th>
            <th>课程学分</th>
            <th>修改</th>
            <th>删除</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${arr}" var="person">
            <tr>
                <td>${person.course_id()}</td>
                <td>${person.course_name()}</td>
                <td>${person.teacher_id()}</td>
                <td>${person.comment()}</td>
                <td><img src="./bootstrap-icons-1.10.5/pencil.svg" onclick="upThisPerson('${person.getUserAccount()}')"></td>
                <td><img src="./bootstrap-icons-1.10.5/trash3.svg" onclick="deleteThisPerson('${person.getUserAccount()}')"></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
<script>
    function deleteThisPerson(){
      //  alert();
    }
    function upThisPerson(){
       // alert();
    }
</script>
</html>