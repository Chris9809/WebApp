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
    <link href="../../css/main/main.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="../../libs/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <link href="../../libs/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <%
        User curUser = (User) session.getAttribute("curUser");
        if(curUser==null){
    %>
        <%@include file="common/topbar.jsp" %>
    <%
    }
    else
    {
    %>
        <%@include file="common/topbar_login.jsp" %>
    <%
        }
    %>

    <%@include file="common/navbar.jsp" %>
</div>

<main role="main" class="container" style="min-height: 600px">
    <div class="row">

        <div class="col-md-8">
            <h3 class="pb-4 mb-4 font-italic border-bottom">
               样例功能清单
            </h3>

            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">功能</th>
                    <th scope="col">URL</th>
                    <th scope="col">作者</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>用户列表打印-基础功能</td>
                    <td><a href="/user/users">/user/users</a></td>
                    <td class="text-primary">@yelihu</td>
                </tr>

                <tr>
                    <th scope="row">2</th>
                    <td>用户列表打印-高级</td>
                    <td><a href="/html/advancedList.html">/html/advancedList.html</a></td>
                    <td class="text-primary">@yelihu</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>文章编辑</td>
                    <td><a href="/html/admin/editor.html">/html/editor.html</a></td>
                    <td class="text-primary">@yelihu</td>
                </tr>
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
<%@include file="common/footer.jsp" %>
<script src="../../libs/jQuery-3.4.1.min.js"></script>
<script src="../../libs/bootstrap-4.3.1-dist/js/bootstrap.bundle.js"></script>
<script src="../../libs/popper.min.js"></script>
<script src="../../js/common/app-js.js"></script>
<script src="../../js/index/index.js"></script>
</body>
</html>
