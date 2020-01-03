<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2020-01-01
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>管理员端首页</title>
    <link href="../../../css/admin/main.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="../../../libs/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../libs/bootstrap-table/dist/bootstrap-table.min.css">
    <link href="../../../libs/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">
    <link href="../../../libs/editor.md-master/css/editormd.css" rel="stylesheet">
    <link href="../../../libs/bootstrap-fileinput-master/css/fileinput.min.css" rel="stylesheet">
    <link href="../../../libs/bootstrap-fileinput-master/themes/explorer/theme.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <%@include file="../../../WEB-INF/jsp/common/topbar_login.jsp" %>
</div>
<main role="main" class="container" style="min-height: 800px">
    <div class="row">
        <div class="col-md-2">
            <jsp:include page="../common/admin/sidebar.jsp">
                <jsp:param  name="path" value="main" />
            </jsp:include>
        </div>
        <div class="col-md-10">
            <nav class="mt-3 " aria-label="breadcrumb">

                <ol class="breadcrumb bg-white">
                    <li class="text-primary">当前位置：</li>
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Library</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Data</li>
                </ol>
            </nav>
        </div>
    </div>
</main><!-- /.container -->
<%@include file="../../../WEB-INF/jsp/common/footer.jsp" %>
<script src="../../../libs/jQuery-3.4.1.min.js"></script>
<script src="../../../libs/bootstrap-table/dist/bootstrap-table.min.js"></script>
<script src="../../../libs/bootstrap-4.3.1-dist/js/bootstrap.bundle.min.js"></script>
<script src="../../../libs/editor.md-master/editormd.js"></script>
<script src="../../../libs/bootstrap-fileinput-master/js/fileinput.min.js"></script>
<script src="../../../libs/bootstrap-fileinput-master/js/locales/zh.js"></script>
<script src="../../../libs/bootstrap-fileinput-master/themes/explorer/theme.min.js"></script>
<script src="../../../libs/popper.min.js"></script>
<script src="../../../js/common/app-js.js"></script>
</body>
</html>
