<%--
  Created by IntelliJ IDEA.
  User: 29864
  Date: 2023/6/21
  Time: 15:07
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
            <input type="hidden" name="opr" value="updateCourse_select"/>
            <input type="hidden" name="id" value="${ Course_select.getSelection_id() }"/>
            <div class="form-group">
                <label for="Selection_id">选课编号</label>
                <input type="text" class="form-control" name="Selection_id"
                       id="Selection_id" value="${Course_select.getSelection_id()}">
                <font color="red"></font>
            </div>

            <div class="form-group">
                <label for="Student_id">学号</label>
                <input type="text" class="form-control"  id="Student_id"
                       name="Student_id" value="${ Course_select.getStudent_id() }">
                <font color="red"></font>
            </div>

            <div class="form-group">
                <label for="Course_id">选课ID</label>
                <input type="text" class="form-control"
                       name="Course_id" id="Course_id" value="${Course_select.getCourse_id() }">
                <font color="red"></font>
            </div>
            <div class="form-group">
                <label for="Selection_date">选课时间</label>
                <input type="text" class="form-control"
                       name="Selection_date" id="Selection_date"
                       value="${Course_select.getSelection_dateStr() }">
                <font color="red"></font>
            </div>


            <button class="btn btn-primary" id="searchBtn" type="submit">提交</button>
            <button class="btn btn-primary" id="resetBtn" type="reset" >重置</button>
        </form>
    </div>
</div>


</body>
</html>