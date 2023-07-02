<%--
  Created by IntelliJ IDEA.
  User: 29864
  Date: 2023/6/18
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="main.jsp"%>
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

    <style>
        .a{
            width: 60%;
            height: 60%;
            top: 60px;
            right:562px;
            position: absolute;
            border-radius: 10px;
            box-shadow: 0px 0px 5px 1px #8c9fc5;
            background-color:#fff;
        }
    </style>

    <title>Title</title>

    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<div class="a">
<form method="get" action="${pageContext.request.contextPath }/user" id="queryform">
    <input type="hidden" name="opr" value="findinformation"/>
</form>

    <div class="container">
    <table class="table table-hover">
        <thead>
        <tr>
            <th>教师号</th>
            <th>班级名</th>
            <th>授课时间</th>
            <th>学号</th>
            <th>成绩</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="information" items="${requestScope.information }" varStatus="status">
        <tr>
            <td><span>${information.getTeacher_id() }</span> </td>
            <td><span>${information.getClassroom_name() }</span> </td>
            <td><span>${information.getSchedule_dateStr()}</span></td>
            <td><span>${information.getStudent_id()}</span>
            <td><span>${information.getGrade()}</span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span>
            <a class="modifyUser" href="${pageContext.request.contextPath}/user?opr=modifyGrade&id=${information.getStudent_id()}">
                <img src="./bootstrap-icons-1.10.5/pencil.svg" onclick="upThisPerson()" >
            </a>
                </span>
        </tr>
        </c:forEach>
    </table>
    </tbody>
    </table>
</div>

</div>
</center>
</div>

</body>

</html>