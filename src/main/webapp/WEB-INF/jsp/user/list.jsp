<%@ page import="cn.edu.sdtbu.webapp.entity.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
    <meta http-equiv="expires" content="0">
    <title>首页</title>
    <link href="../../../css/main/main.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="../../../libs/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <%--<link rel="stylesheet" href="../../../libs/bootstrap-table/dist/bootstrap-table.min.css">--%>
    <link href="../../../libs/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <%
        User curUser = (User) session.getAttribute("curUser");
    %>
    <%@include file="../common/topbar_login.jsp" %>
    <div class="nav-scroller py-1 mb-2">
        <nav class="nav d-flex justify-content-between">
            <a class="p-2 text-muted" href="#">World</a>
            <a class="p-2 text-muted" href="#">U.S.</a>
            <a class="p-2 text-muted" href="#">Technology</a>
            <a class="p-2 text-muted" href="#">Design</a>
            <a class="p-2 text-muted" href="#">Culture</a>
        </nav>
    </div>
</div>

<main role="main" class="container" style="min-height: 600px">
    <div class="row">
        <div class="col-md-8">
            <h3 class="pb-4 mb-4 font-italic border-bottom">
               用户列表
            </h3>
            <%----%>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">用户名</th>
                    <th scope="col">密码</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${userList}" var="user" varStatus="i"  >
                    <tr>
                        <th scope="row">${i.count}</th>
                        <td>${user.username}</td>
                        <td>${user.password}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>

        <aside class="col-md-4">

            <div class="p-4">
                <h4 class="font-italic">Archives</h4>
                <ol class="list-unstyled mb-0">
                    <li><a href="#">March 2014</a></li>
                    <li><a href="#">February 2014</a></li>
                    <li><a href="#">January 2014</a></li>
                    <li><a href="#">December 2013</a></li>
                    <li><a href="#">November 2013</a></li>
                </ol>
            </div>
        </aside>
    </div>


</main><!-- /.container -->
<%@include file="../common/footer.jsp" %>
<script src="../../../libs/jQuery-3.4.1.min.js"></script>
<script src="../../../libs/bootstrap-4.3.1-dist/js/bootstrap.bundle.js"></script>
<%--<script src="../../../libs/bootstrap-table/dist/bootstrap-table.min.js"></script>--%>
<script src="../../../libs/popper.min.js"></script>
<script src="../../../js/common/app-js.js"></script>
<script src="../../../js/index/index.js"></script>
</body>
</html>
