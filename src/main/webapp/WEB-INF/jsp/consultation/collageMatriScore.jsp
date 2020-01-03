<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2020/1/3
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="cn.edu.sdtbu.webapp.entity.User" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
    <meta http-equiv="expires" content="0">
    <title>全国大学录取分数</title>
    <link rel="stylesheet" href="../../../libs/bootstrap-4.3.1-dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <%
        User curUser = (User) session.getAttribute("curUser");
        if(curUser==null){
    %>
    <%@include file="../common/topbar.jsp" %>
    <%}
    else
    {
    %>
    <%@include file="../common/topbar_login.jsp" %>
    <%
        }
    %>
    <jsp:include page="../common/navbar.jsp">
        <jsp:param  name="consultationMain" value="20191230" />
    </jsp:include>

    <%@include file="../common/footer.jsp" %>
    <script src="../../../libs/jQuery-3.4.1.min.js"></script>
    <script src="../../../libs/bootstrap-4.3.1-dist/js/bootstrap.bundle.js"></script>
    <script src="../../../js/common/app-js.js"></script>
    <script src="../../../js/index/index.js"></script>
</div>
</body>
</html>
