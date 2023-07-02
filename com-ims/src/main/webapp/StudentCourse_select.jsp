<%--
  Created by IntelliJ IDEA.
  User: zhaoqingyu
  Date: 2023/6/1
  Time: 22:08
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
<div>
<div class="a">
<form method="get" action="${pageContext.request.contextPath }/user"
      id="queryform">
  <input type="hidden" name="opr" value="course_select"/>
<%--  <span>课程id</span>--%>
<%--  <input name="c" class="input-text"--%>
<%--         type="text" value="${requestScope.queryUserName}">--%>
<%--  <input value="查 询" type="submit" id="searchbutton">--%>


  <div class="row m-3 pb-2" style="padding-top: 10px;padding-top: 10px;">
    <div class="col-md-2 offset-md-2">
      <input  name="queryCourseId" type="text" class="form-control" id="course_id" placeholder="请输入选课编号或者学生学号" value="${requestScope.queryCourse}"/>
      <%--                 <input name="queryCourse" class="input-text"    placeholder="请输入课程ID" type="text" value="${requestScope.queryCourse}">--%>
    </div>

    <div class="col-md-1">
      <button class="btn btn-primary btn-sm" id="searchBtn" type="submit">查询</button>
    </div>
    <div class="col-md-1">
      <button class="btn btn-sm btn-info" id="resetBtn" type="reset">重置</button>
    </div>
    <%--        <div class="col-md-2">--%>
    <%--            <button class="btn btn-sm btn-info" id=""  >添加信息</button>--%>
    <%--        </div>--%>
  </div>

</form>
      <div class="col-md-2" style="top:87px;position:fixed;right: 800px;">
        <button class="btn btn-sm btn-info " data-toggle="modal" data-target="#myModal" id=" ">添加信息</button>
      </div>
<div class="container">
<table class="table table-hover">
  <thead>
  <tr>
    <th>选课编号</th>
    <th>学生学号</th>
    <th>课程ID</th>
    <th>选课时间</th>
<%--选课管理--%>
  </tr>
  </thead>
  <tbody>
    <c:forEach var="course_select" items="${requestScope.course_selection }" varStatus="status">
      <tr>
        <td><span>${course_select.getSelection_id() }</span>
        </td>
        <td><span>${course_select.getStudent_id() }</span>
        </td>

        <td><span>${course_select.getCourse_id()}</span>
        </td>
        <td><span>${course_select.getSelection_dateStr()}</span>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <span>
            <a class="modifyUser" href="${pageContext.request.contextPath}/user?opr=Course_selectModify&id=${course_select.getSelection_id()}">
                <img src="./bootstrap-icons-1.10.5/pencil.svg" onclick="upThisPerson()" >
            </a>
                </span>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

          <span>
            <a class="modifyUser" href="${pageContext.request.contextPath}/user?opr=Course_selectDelete&id=${course_select.getSelection_id()}">
               <img src="./bootstrap-icons-1.10.5/trash3.svg" onclick="deleteThisPerson()">
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


<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- 模态框头部 -->
      <div class="modal-header">
<%--          插眼          下面的中文--%>
        <h4 class="modal-title">添加选课</h4>
        <button type="button" class="close" data-dismiss="modal" data-target="">&times</button>
      </div>

      <!-- 模态框主体 -->
      <div class="modal-body">

        <%--                </form >--%>
        <form method="get" action="${pageContext.request.contextPath }/user"
              id="queryform">
          <input type="hidden" name="opr" value="course_selectadd"/>
          <div class="form-group">
            <label class="control-label">选课编号</label>
            <input type="text" class="form-control"  name="selection_id" value="${requestScope.queryUserName}">
          </div>
          <div class="form-group">
            <label class="control-label">学生编号</label>
            <input type="text" class="form-control"  name="student_id" value="${requestScope.queryUserName}">
          </div>
          <div class="form-group">
            <label class="control-label">课程id</label>
            <input type="text" class="form-control"  name="course_id" value="${requestScope.queryUserName}">
          </div>
          <div class="form-group">
            <label class="control-label">选择日期</label>
            <input type="text" class="form-control"  name="selection_date" value="${requestScope.queryUserName}">
          </div>
          <div class="modal-footer">
            <button class="btn btn-primary btn-sm" id="search-input" type="submit">提交</button>
            <button class="btn btn-sm btn-info" id="reset-button" type="reset">重置</button>
          </div>
        </form>
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

</html>

