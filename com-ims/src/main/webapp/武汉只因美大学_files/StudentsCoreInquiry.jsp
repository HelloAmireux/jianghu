<%--
  Created by IntelliJ IDEA.
  User: zhaoqingyu
  Date: 2023/6/16
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../main.jsp"%>
<html>
<head>
  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">

  <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
  <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>

  <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
  <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
  <script src="/js/bootstrap.bundle.min.js"></script>
    <title>Title</title>
</head>
<body>
<div style="margin-left:200px;margin-top:100px;width:1000px;">
  <div class="panel panel-primary">
    <div class="panel-heading">
      <h3 class="panel-title">成绩查询</h3>
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
          <span>课程名称：</span>
        </div>
        <div style="float:left;">
          <input id="course_name" class="form-control" style="width:200px;" placeholder="请输入课程名称" />
        </div>
        <div style="float:left;margin-left:20px;">
          <button id="query" class="btn btn-primary">查询</button>
        </div>
      </div>
    </div>
  </div>
  <table id="table"></table>
</div>

<script>
  $(document).ready(function () {
    $('#table').bootstrapTable({
      url: "ashx/GetRecordsHandler.ashx",                    // URL
      method: "post",                                        // 请求类型
      contentType: "application/x-www-form-urlencoded",      // post请求必须要有，否则后台接受不到参数
      sidePagination: "server",                              // 设置在服务端还是客户端分页
      showRefresh: false,                                    // 是否刷新按钮
      sortStable: true,                                      // 是否支持排序
      cache: false,                                          // 是否使用缓存
      pagination: true,                                      // 是否显示分页
      search: false,                                         // 是否有搜索框
      clickToSelect: true,                                   // 是否点击选中行
      pageNumber: 1,                                         // 首页页码，默认为1
      pageSize: 5,                                           // 页面数据条数
      pageList: [5, 10, 20, 30],
      queryParamsType: "",
      queryParams: function (params) {
        return {
          pageSize: params.pageSize,                     // 每页记录条数
          pageNumber: params.pageNumber,                 // 当前页索引
          name: $('#studnt_id').val(),                        // 学号
          gender: $('#course_name').val()                     // 课程名称
        };
      },
      columns: [
        {
          field: 'course_Name',
          title: '课程名称',
          align: "center",
          halign: "center"
        },
        {
          field: 'student_id',
          title: '学号',
          align: "center",
          halign: "center"
        },
        {
          field: 'student_Name',
          title: '姓名',
          align: "center",
          halign: "center"
        },
        {
          field: 'grade',
          title: '成绩',
          align: "center",
          halign: "center"
        }]
    })

    // 查询按钮
    $('#query').click(function () {
      $('#table').bootstrapTable('refresh', { pageNumber: 1 });
    });
  });
</script>
</body>
</html>
