<%--
  Created by IntelliJ IDEA.
  User: 29864
  Date: 2023/6/21
  Time: 14:02
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
            <input type="hidden" name="opr" value="updatestudent"/>
            <input type="hidden" name="id" value="${ student.getStudent_id() }"/>
            <div class="form-group">
                <label for="Student_id">学号</label>
                <input type="text" class="form-control" name="Student_id"
                       id="Student_id" value="${student.getStudent_id()}">
                <font color="red"></font>
            </div>

            <div class="form-group">
                <label for="Student_name">姓名</label>
                <input type="text" class="form-control"  id="Student_name"
                       name="Student_name" value="${ student.getStudent_name() }">
                <font color="red"></font>
            </div>

            <div class="form-group">
                <label for="Major">专业</label>
                <input type="text" class="form-control"
                       name="Major" id="Major" value="${student.getMajor() }">
                <font color="red"></font>
            </div>
            <div class="form-group">
                <label for="Student_password">密码</label>
                <input type="text" class="form-control"
                       name="Student_password" id="Student_password" value="${student.getStudent_password() }">
                <font color="red"></font>
            </div>
            <div class="form-group">
                <label for="Birthday">生日</label>
                <input type="text" class="form-control"
                       name="Birthday" id="Birthday" value="${student.getBirthdayStr()}">
                <font color="red"></font>
            </div>
            <div class="form-group">
                <label for="Gender">性别</label>
                <input type="text" class="form-control"
                       name="Gender" id="Gender" value="${student.getGender()}">
                <font color="red"></font>
            </div>
            <button class="btn btn-primary" id="searchBtn" type="submit">提交</button>
            <button class="btn btn-primary" id="resetBtn" type="reset" >重置</button>
        </form>
    </div>
</div>


</body>
</html>