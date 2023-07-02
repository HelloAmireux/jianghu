<%--
  Created by IntelliJ IDEA.
  User: zhaoqingyu
  Date: 2023/6/1
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <style>



  </style>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <script src="js/respond.min.js"></script>
  <title>Title</title>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<div class="container">
<table class="table table-hover">
  <thead>
  <tr>
    <th>账户</th>
    <th>姓名</th>
    <th>性别</th>
    <th>出生日</th>
    <th>身份证号码</th>
    <th>角色</th>
    <th>其他名称</th>
    <th>修改</th>
    <th>删除</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${arr}" var="person">
    <tr>
      <td>${person.getUserAccount()}</td>
      <td>${person.getUserName()}</td>
      <td>${person.getUserSex()}</td>
      <td>${person.getUserBirthday()}</td>
      <td>${person.getUserIdCard()}</td>
      <td>
        <c:if test="${person.getUserIdentify()==0}">学生</c:if>
        <c:if test="${person.getUserIdentify()==1}">老师</c:if>
      </td>
      <td>${person.getUserOtherName()}</td>
      <td><img src="./bootstrap-icons-1.10.5/pencil.svg" onclick="upThisPerson('${per.getUserAccount()}')"></td>
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
  function deleteThisPerson(userAccount){
    alert();
  }
  function upThisPerson(userAccount){
    alert();
  }
</script>


</html>

