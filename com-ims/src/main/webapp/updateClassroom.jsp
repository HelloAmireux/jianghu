<%--
  Created by IntelliJ IDEA.
  User: 29864
  Date: 2023/6/20
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>

    <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
    <script src="/js/bootstrap.bundle.min.js"></script>




    <title>Title</title>

    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>

<div class="right">
    <div class="location">

    </div>
    <div class="container w-25 p-3">
        <form id="userForm" name="userForm" method="get" action="${pageContext.request.contextPath }/user">
            <input type="hidden" name="opr" value="updateClassroom"/>
            <input type="hidden" name="id" value="${ classroom.getClassroom_id() }"/>
            <div class="form-group">
                <label for="classroom_id">教室编号</label>
                <input type="text" class="form-control" placeholder="教室编号:" name="classroom_id"
                       id="classroom_id" value="${classroom.getClassroom_id()}">
                <font color="red"></font>
            </div>

            <div class="form-group">
                <label for="classroom_name">教室名称</label>
                <input type="text" class="form-control" placeholder="教室名称:" id="classroom_name"
                       name="classroom_name" value="${ classroom.getClassroom_name() }">
                <font color="red"></font>
            </div>

            <div class="form-group">
                <label for="capacity">教室容量</label>
                <input type="text" class="form-control" placeholder="教室容量:"
                       name="capacity" id="capacity" value="${classroom.getCapacity() }">
                <font color="red"></font>
            </div>
            <button class="btn btn-primary" id="searchBtn" type="submit">提交</button>
            <button class="btn btn-primary" id="resetBtn" type="reset" >重置</button>
        </form>
    </div>
</div>


</body>
</html>
