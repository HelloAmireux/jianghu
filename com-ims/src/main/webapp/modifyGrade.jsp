<%--
  Created by IntelliJ IDEA.
  User: 29864
  Date: 2023/6/20
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@include file="main.jsp"%>--%>
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
    <div class="location"></div>
    <div class=" container providerAdd ">
        <div class="form-group">
        <form id="userForm" name="userForm" method="get" action="${pageContext.request.contextPath }/user">
            <input type="hidden" name="opr" value="Grademodify"/>
            <input type="hidden" name="id" value="${ information.getStudent_id() }"/>
            <div>
                <label for="student_id">教室名称</label>
                <input type="text" class="form-control" id="student_id" name="student_id" value="${ information.getStudent_id() }">

                <font color="red"></font>
            </div>
            <div>
                <label for="grade">成绩</label>
                <input type="text" class="form-control" name="grade" id="grade" value="${information.getGrade()}">
                <font color="red"></font>
            </div>

            <button class="btn btn-primary mt-3" id="searchBtn" type="submit">提交</button>
            <button class="btn btn-primary mt-3" id="resetBtn" type="reset" >重置</button>


        </form>
        </div>
    </div>
</div>


</body>
</html>
