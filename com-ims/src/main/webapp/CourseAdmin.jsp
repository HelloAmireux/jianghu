<%--
  Created by IntelliJ IDEA.
  User: 29864
  Date: 2023/6/19
  Time: 13:37
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
<%--课程管理--%>

<div class="a">
<form method="get" action="${pageContext.request.contextPath }/user"
      id="queryform">
    <input type="hidden" name="opr" value="courseAdmin"/>


    <div class="row m-3 pb-2" style="padding-top: 10px;padding-top: 10px;">
        <div class="col-md-2 offset-md-2">
            <input  name="queryCourse" type="text" class="form-control" id="course_id" placeholder="请输入课程编号" value="${requestScope.queryCourse}"/>
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
                <button class="btn btn-sm btn-info " data-toggle="modal" data-target="#myModal" id=" ">添加课程信息</button>
            </div>
<div class="container">
    <table class="table table-hover">
        <thead>
        <tr>
            <th>课程编号</th>
            <th>课程名称</th>
            <th>学分</th>
            <th>任教老师工号</th>



        </tr>
        </thead>
        <tbody>

        <c:forEach var="course" items="${requestScope.courseShow }" varStatus="status">
        <tr>
            <td><span>${course.getCourse_id() }</span> </td>
            <td><span>${course.getCourse_name() }</span> </td>
            <td><span>${course.getCredit()}</span></td>
            <td><span>${course.getTeacher_id()}</span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <span>
            <a class="modifyUser" href="${pageContext.request.contextPath}/user?opr=CourseModify&id=${course.getCourse_id()}">
                <img src="./bootstrap-icons-1.10.5/pencil.svg" onclick="upThisPerson()" >
            </a>
                </span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <span>
            <a class="modifyUser" href="${pageContext.request.contextPath}/user?opr=CourseDelete&id=${course.getCourse_id()}">
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


<div>
    <%--<!-- 模态框 -->--%>
    <%--<div class="modal fade" id="myModal1">--%>
    <%--    <div class="modal-dialog">--%>
    <%--        <div class="modal-content">--%>

    <%--            <!-- 模态框头部 -->--%>
    <%--            <div class="modal-header">--%>
    <%--                <h4 class="modal-title">教室信息1</h4>--%>
    <%--                <button type="button" class="close" data-dismiss="modal" data-target="">&times</button>--%>
    <%--            </div>--%>

    <%--            <!-- 模态框主体 -->--%>
    <%--            <div class="modal-body">--%>

    <%--                &lt;%&ndash;                </form >&ndash;%&gt;--%>
    <%--                <form method="get" action="${pageContext.request.contextPath }/user"--%>
    <%--                      id="queryform">--%>
    <%--                    <input type="hidden" name="opr" value="classroommodify"/>--%>
    <%--                    <input type="hidden" name="modify_id" value=""/>--%>

    <%--                    <div class="form-group">--%>
    <%--                        <label class="control-label">教室ID</label>--%>
    <%--                        <input type="text" class="form-control"  name="classroom_id" value="${requestScope.queryUserName}">--%>
    <%--                    </div>--%>
    <%--                    <div class="form-group">--%>
    <%--                        <label class="control-label">教室名称：</label>--%>
    <%--                        <input type="text" class="form-control"  name="classroomname" value="${requestScope.queryUserName}">--%>
    <%--                    </div>--%>
    <%--                    <div class="form-group">--%>
    <%--                        <label class="control-label">教室容量：</label>--%>
    <%--                        <input type="text" class="form-control"  name="capacity" value="${requestScope.queryUserName}">--%>
    <%--                    </div>--%>
    <%--                    <div class="modal-footer">--%>
    <%--                        <button class="btn btn-primary btn-sm" id="search-input" type="submit">提交</button>--%>
    <%--                        <button class="btn btn-sm btn-info" id="reset-button" type="reset">重置</button>--%>
    <%--                    </div>--%>
    <%--                </form>--%>
    <%--            </div>--%>
    <%--            <!-- 模态框底部 -->--%>
    <%--            <div class="modal-footer">--%>
    <%--                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>--%>
    <%--            </div>--%>

    <%--        </div>--%>
    <%--    </div>--%>
    <%--</div>--%>

</div>
<!-- 模态框 -->
<div class="modal fade" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- 模态框头部 -->
            <div class="modal-header">
                <h4 class="modal-title">课程信息</h4>
                <button type="button" class="close" data-dismiss="modal" data-target="">&times</button>
            </div>

            <!-- 模态框主体 -->
            <div class="modal-body">

                <%--                </form >--%>
                <form method="get" action="${pageContext.request.contextPath }/user"
                      id="queryform">
                    <input type="hidden" name="opr" value="courseadd"/>
                    <div class="form-group">
                        <label class="control-label">课程编号</label>
                        <input type="text" class="form-control"  name="course_id" value="${requestScope.queryUserName}">
                    </div>
                    <div class="form-group">
                        <label class="control-label">课程名字</label>
                        <input type="text" class="form-control"  name="course_name" value="${requestScope.queryUserName}">
                    </div>
                    <div class="form-group">
                        <label class="control-label">学分</label>
                        <input type="text" class="form-control"  name="credit" value="${requestScope.queryUserName}">
                    </div>
                    <div class="form-group">
                        <label class="control-label">任教老师工号</label>
<%--                        <input type="text" class="form-control"  name="teacher_id" value="${requestScope.queryUserName}">--%>
                        <select class="single-select"  name="teacher_id">
                            <c:forEach var="t" items="${requestScope.teacher }" varStatus="status">
                            <option value="${t.teacher_id}">${t.teacher_id}</option>
                          </c:forEach>
                        </select>
<%--    插眼                上面的foreach--%>
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