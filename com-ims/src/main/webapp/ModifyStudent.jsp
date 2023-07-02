<%--
  Created by IntelliJ IDEA.
  User: 29864
  Date: 2023/6/19
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="main.jsp"%>
<html>

<div class="right">

    <div class="providerAdd">
        <form id="userForm" name="userForm" method="post" action="${pageContext.request.contextPath }/user?opr=updateUser">
            <input type="hidden" name="id" value="${ user.id }"/>
            <div>
                <label for="userName">用户名称：</label>
                <input type="text" name="userName" id="userName" value="${ user.userName }">
                <font color="red"></font>
            </div>
            <div>
                <label >用户性别：</label>
                <select name="gender" id="gender">
                    <c:choose>
                        <c:when test="${user.gender == 1 }">
                            <option value="1" selected="selected">男</option>
                            <option value="2">女</option>
                        </c:when>
                        <c:otherwise>
                            <option value="1">男</option>
                            <option value="2" selected="selected">女</option>
                        </c:otherwise>
                    </c:choose>
                </select>
            </div>
            <div>
                <label for="data">出生日期：</label>
                <input type="text" Class="Wdate" id="birthday" name="birthday"
                <%--value="<fmt:formatDate  value='${user.birthday }' pattern='yyyy-MM-dd'/>"--%>
                       value="${user.birthday}"
                       readonly="readonly" onclick="WdatePicker();" />
                <font color="red"></font>
            </div>

            <div>
                <label for="phone">用户电话：</label>
                <input type="text" name="phone" id="phone" value="${user.phone }">
                <font color="red"></font>
            </div>
            <div>
                <label for="address">用户地址：</label>
                <input type="text" name="address" id="address" value="${user.address }">
            </div>
            <div>
                <label >用户角色：</label>
                <!-- 列出所有的角色分类 -->
                <%-- <input type="hidden" value="${user.userRole }" id="rid" />
                <select name="userRole" id="userRole"></select> --%>

                <select name="roleId" id="userRole">
                    <c:choose>
                        <c:when test="${user.roleId == 1 }">
                            <option value="1" selected="selected">系统管理员</option>
                            <option value="2">经理</option>
                            <option value="3">普通用户</option>
                        </c:when>
                        <c:when test="${user.roleId == 2 }">
                            <option value="1">系统管理员</option>
                            <option value="2" selected="selected">经理</option>
                            <option value="3">普通用户</option>
                        </c:when>
                        <c:otherwise>
                            <option value="1">系统管理员</option>
                            <option value="2">经理</option>
                            <option value="3" selected="selected">普通用户</option>
                        </c:otherwise>
                    </c:choose>
                </select>
                <font color="red"></font>
            </div>
            <div class="providerAddBtn">
                <input type="button" name="save" id="save" value="保存"  />
                <input type="button" id="back" name="back" value="返回"/>
            </div>
        </form>
    </div>
</div>
</section>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/usermodify.js"></script>

<%--<div class="right">--%>
<%--    <div class="location">--%>

<%--    </div>--%>
<%--    <div class="providerAdd">--%>
<%--        <form id="userForm" name="userForm" method="post" action="${pageContext.request.contextPath }/user?opr=updateUser">--%>
<%--            <input type="hidden" name="id" value="${ user.getStudent_id() }"/>--%>
<%--            <div>--%>
<%--                <label for="student_name">学生姓名：</label>--%>
<%--                <input type="text" name="student_name" id="student_name" value="${ user. getStudent_name()}">--%>
<%--                <font color="red"></font>--%>
<%--            </div>--%>
<%--            <div>--%>
<%--                <label >用户性别：</label>--%>
<%--                <select name="gender" id="gender">--%>
<%--                    <c:choose>--%>

<%--                            <option value="男" selected="selected">男</option>--%>
<%--                            <option value="女">女</option>--%>


<%--                    </c:choose>--%>
<%--                </select>--%>
<%--            </div>--%>
<%--            <div>--%>
<%--                <label for="data">出生日期：</label>--%>
<%--                <input type="text" Class="Wdate" id="birthday" name="birthday"--%>

<%--                       value="${usermodify.js.getBirthday()}"--%>
<%--                       readonly="readonly" onclick="WdatePicker();" />--%>
<%--                <font color="red"></font>--%>
<%--            </div>--%>

<%--            <div>--%>
<%--                <label for="major">专业：</label>--%>
<%--                <input type="text" name="major" id="major" value="${user.getMajor() }">--%>
<%--                <font color="red"></font>--%>
<%--            </div>--%>
<%--            <div>--%>
<%--                <label for="student_password">密码</label>--%>
<%--                <input type="text" name="student_password" id="student_password" value="${user.getStudent_password() }">--%>
<%--            </div>--%>

<%--            <div class="providerAddBtn">--%>
<%--                <input type="button" name="save" id="save" value="保存" />--%>
<%--                <input type="button" id="back" name="back" value="返回"/>--%>
<%--            </div>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<script type="text/javascript" src="${pageContext.request.contextPath }/js/Studentmodify.js"></script>--%>



</html>