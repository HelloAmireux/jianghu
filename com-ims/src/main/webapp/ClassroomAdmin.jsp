<%--
  Created by IntelliJ IDEA.
  User: 29864
  Date: 2023/6/18
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="main.jsp"%>


<html>
<script>
    // 提交表单
    function delete_info(id)
    {
        if(!id)
        {
            alert('Error！');
            return false;
        }
        // var form_data = new Array();

        $.ajax(
            {
                url: "action/user_action.php",
                data:{"id":id, "act":"del"},
                type: "post",
                beforeSend:function()
                {
                    $("#tip").html("<span style='color:blue'>正在处理...</span>");
                    return true;
                },
                success:function(data)
                {
                    if(data > 0)
                    {
                        alert('操作成功');
                        $("#tip").html("<span style='color:blueviolet'>恭喜，删除成功！</span>");

                        // document.location.href='world_system_notice.php'
                        location.reload();
                    }
                    else
                    {
                        $("#tip").html("<span style='color:red'>失败，请重试</span>");
                        alert('操作失败');
                    }
                },
                error:function()
                {
                    alert('请求出错');
                },
                complete:function()
                {
                    // $('#tips').hide();
                }
            });

        return false;
    }

    // 编辑表单
    function get_edit_info(user_id)
    {
        if(!user_id)
        {
            alert('Error！');
            return false;
        }
        // var form_data = new Array();

        $.ajax(
            {
                url: "action/user_action.php",
                data:{"user_id":user_id, "act":"get"},
                type: "post",
                beforeSend:function()
                {
                    // $("#tip").html("<span style='color:blue'>正在处理...</span>");
                    return true;
                },
                success:function(data)
                {
                    if(data)
                    {

                        // 解析json数据
                        var data = data;

                        var data_obj = eval("("+data+")");

                        // 赋值
                        $("#user_id").val(data_obj.user_id);

                        $("#name").val(data_obj.name);
                        $("#address").val(data_obj.address);
                        $("#remark").val(data_obj.remark);
                        $("#act").val("edit");

                        // 将input元素设置为readonly
                        $('#user_id').attr("readonly","readonly")
                        // location.reload();
                    }
                    else
                    {
                        $("#tip").html("<span style='color:red'>失败，请重试</span>");
                        //  alert('操作失败');
                    }
                },
                error:function()
                {
                    alert('请求出错');
                },
                complete:function()
                {
                    // $('#tips').hide();
                }
            });

        return false;
    }

    // 提交表单
    function check_form()
    {
        var user_id = $.trim($('#user_id').val());
        var act     = $.trim($('#act').val());

        if(!user_id)
        {
            alert('用户ID不能为空！');
            return false;
        }
        var form_data = $('#form_data').serialize();

        // 异步提交数据到action/add_action.php页面
        $.ajax(
            {
                url: "action/user_action.php",
                data:{"form_data":form_data,"act":act},
                type: "post",
                beforeSend:function()
                {
                    $("#tip").html("<span style='color:blue'>正在处理...</span>");
                    return true;
                },
                success:function(data)
                {
                    if(data > 0)
                    {

                        var msg = "添加";
                        if(act == "edit") msg = "编辑";
                        $("#tip").html("<span style='color:blueviolet'>恭喜，" +msg+ "成功！</span>");
                        // document.location.href='system_notice.php'
                        alert(msg + "OK！");
                        location.reload();
                    }
                    else
                    {
                        $("#tip").html("<span style='color:red'>失败，请重试</span>");
                        alert('操作失败');
                    }
                },
                error:function()
                {
                    alert('请求出错');
                },
                complete:function()
                {
                    $('#acting_tips').hide();
                }
            });

        return false;
    }

    $(function () { $('#addUserModal').on('hide.bs.modal', function () {
        // 关闭时清空edit状态为add
        $("#act").val("add");
        location.reload();
    })
    });
</script>

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
<%--教室管理--%>

<div class="a">
<form method="get" action="${pageContext.request.contextPath }/user"
      id="queryform">
    <input type="hidden" name="opr" value="classroomAdmin"/>
<%--    <span>班级号</span>--%>
<%--    <input name="queryclassroomname" class="input-text"--%>
<%--           type="text" value="${requestScope.queryUserName}">--%>


<%--    <input value="查 询" type="submit" id="searchbutton">--%>
    <div class="row m-3 pb-2" style="padding-top: 10px;padding-top: 10px;">
        <div class="col-md-2 offset-md-2">
            <input  name="queryclassroomname" type="text" class="form-control" id="classroom_id"
                    placeholder="请输入班级号" value="${requestScope.queryUserName}"/>
            <%--                 <input name="queryCourse" class="input-text"    placeholder="请输入课程ID" type="text" value="${requestScope.queryCourse}">--%>
        </div>

        <div class="col-md-1">
            <button class="btn btn-primary btn-sm" id="searchBtn" type="submit">查询</button>
        </div>
        <div class="col-md-1">
            <button class="btn btn-sm btn-info" id="resetBtn" type="reset">重置</button>
        </div>

    </div>
</form>

                    <div class="col-md-2" style="top:87px;position:fixed;right: 800px;">
                        <button class="btn btn-sm btn-info " data-toggle="modal" data-target="#myModal" id=" ">添加信息</button>
                    </div>


<div class="container">
    <table class="table table-hover">
        <thead>
        <tr>
            <th>教室编号</th>
            <th>教室名称</th>
            <th>容量</th>
        </tr>
        </thead>
    <tbody>


    <c:forEach var="classroom" items="${requestScope.classroomShow }" varStatus="status">
        <tr>
            <td><span>${classroom.getClassroom_id() }</span> </td>
            <td><span>${classroom.getClassroom_name() }</span> </td>
            <td><span>${classroom.getCapacity()}</span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <span>
<%--                   --%>
            <a class="modifyUser"  href="${pageContext.request.contextPath}/user?opr=ClassroomModify&id=${classroom.getClassroom_id()}">
                <img src="./bootstrap-icons-1.10.5/pencil.svg"    >
            </a>

<%--                 <button class="btn btn-sm btn-info " href="${pageContext.request.contextPath}/user?opr=ClassroomDelete&id=${classroom.getClassroom_id()+1}" data-toggle="modal"--%>
<%--                         data-target="#myModal1" id="${classroom.getClassroom_id()}"--%>
<%--                         name="modifyButton"  >修改信息</button>--%>
                </span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <span>
            <a class="modifyUser" href="${pageContext.request.contextPath}/user?opr=ClassroomDelete&id=${classroom.getClassroom_id()}">
               <img src="./bootstrap-icons-1.10.5/trash3.svg" onclick="deleteThisPerson()">
            </a>
                </span>

        </tr>
        </c:forEach>

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
                <h4 class="modal-title">教室信息</h4>
                <button type="button" class="close" data-dismiss="modal" data-target="">&times</button>
            </div>

            <!-- 模态框主体 -->
            <div class="modal-body">
<%--                <form id="form_add" action="${pageContext.request.contextPath }/user" method="get">--%>
<%--                    <div class="form-group">--%>
<%--                        <label class="control-label">教室ID</label>--%>
<%--                        <input type="text" class="form-control"  name="classroom_id" value="${requestScope.queryUserName}">--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <label class="control-label">教室名称：</label>--%>
<%--                        <input type="text" class="form-control"  name="classroomname" value="${requestScope.queryUserName}">--%>
<%--                    </div>--%>

<%--                    <div class="modal-footer">--%>
<%--                        <button type="button" class="btn btn-default" data-dismiss="modal"  id="reset-button" type="reset">重置</button>--%>
<%--                        <button type="button" class="btn btn-primary"  id="search-input" type="submit" >确认提交</button>--%>
<%--&lt;%&ndash;                        <button type="button" class="btn btn-primary"  id="but_submit_reset" type="reset" >重置</button>&ndash;%&gt;--%>
<%--                 </div>--%>
<%--                </form >--%>
                <form method="get" action="${pageContext.request.contextPath }/user"
                      id="queryform">
                    <input type="hidden" name="opr" value="classroomadd"/>
                                            <div class="form-group">
                                                <label class="control-label">教室ID</label>
                                                <input type="text" class="form-control"  name="classroom_id" value="${requestScope.queryUserName}">
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">教室名称：</label>
                                                <input type="text" class="form-control"  name="classroomname" value="${requestScope.queryUserName}">
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">教室容量：</label>
                                                <input type="text" class="form-control"  name="capacity" value="${requestScope.queryUserName}">
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