<%--
  Created by IntelliJ IDEA.
  User: zhaoqingyu
  Date: 2023/6/19
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="main.jsp"%>
<html>
<head>
  <link href="css/bootstrap.min.css" rel="stylesheet">

  <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
  <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>

  <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
  <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
  <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>

  <title>教室管理</title>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<div class="container">
  <div class="row" style="padding-top: 10px;">
    <div class="col-md-2 offset-md-2">
      <input type="text" class="form-control" id="course_id" placeholder="请输入教室ID"/>
    </div>
    <div class="col-md-2">
      <input type="text" class="form-control" id="course_name" placeholder="请输入教室名称"/>
    </div>
    <div class="col-md-1">
      <button class="btn btn-primary btn-sm" id="searchBtn">查询</button>
    </div>
    <div class="col-md-1">
      <button class="btn btn-sm btn-info" id="resetBtn">重置</button>
    </div>

  </div>


  <table class="table table-hover">
    <thead>
    <tr>
      <th>教室ID</th>
      <th>教室名称</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${arr}" var="person">
      <tr>
        <td>${person.classroom_id()}</td>
        <td>${person.classroom_name()}</td>

        <td>
          <button class="btn " data-toggle="modal" data-target="#myModal" id=" ">
		<span class="glyphicon glyphicon-fullscreen">
          <img src="./bootstrap-icons-1.10.5/pencil.svg" >
		</span>
          </button>
        </td>

        <td><img src="./bootstrap-icons-1.10.5/trash3.svg" onclick="deleteThisPerson('${person.a}')"></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>

<!-- 模态框 -->
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- 模态框头部 -->
      <div class="modal-header">
        <h4 class="modal-title">教室信息</h4>
        <button type="button" class="close" data-dismiss="modal" data-target="">&times</button>
      </div>

      <!-- 模态框主体 -->
      <div class="modal-body">
        <form id="form_add">
          <div class="form-group">
            <label class="control-label">教室ID</label>
            <input type="text" class="form-control"  name="classroom_id" value="">
          </div>
          <div class="form-group">
            <label class="control-label">教室名称：</label>
            <input type="text" class="form-control"  name="classroom" value="">
          </div>
        </form>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消保存</button>
          <button type="button" class="btn btn-primary"  id="but_submit_add">确认保存</button>
        </div>

      </div>

      <!-- 模态框底部 -->
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
      </div>

    </div>
  </div>
</div>




<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
<script>
</script>
</html>