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
    <link href="../../../css/index/index.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="../../../libs/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <link href="../../../libs/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">
    <style>
        #jumbotron1{
            background-image: url(../../../images/consultation/mainBg.png);
            background-size:100% 100%;
            background-repeat: no-repeat;
            background-color: rgba(0, 0, 0, 0.4);
            height: 360px;
        }
        .order {
            height: 60px;
            line-height: 60px;
            text-align: center;
        }
        .order .line {
            display: inline-block;
            width: 35%;
            border-top: 3px solid #82B3D5;
        }
        .order .txt {
            color: #555;
            vertical-align: middle;
        }
    </style>
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
    <div id="jumbotron1" class="jumbotron p-4 p-md-5 text-white rounded bg-dark">
        <div class="col-md-6 px-0">
            <h1 class="display-4 font-weight-bold"></h1>
            <p class="lead my-3"></p>
            <p class="lead mb-0"><a href="#" class="text-white font-weight-bold"></a></p>
        </div>
    </div>
    <div class="media border p-3" style="margin-bottom: 10px">
        <img class="mr-3" src="../../../images/consultation/shu.png" alt="Generic placeholder image">
        <div class="media-body">
            <h5 class="mt-0">中高考资讯介绍</h5>
            根据全国各省（区、市）高中考志愿填报时间安排，本网站已于6月22日更新各大学校最新信息。
            为各大同学们提供一个良好的志愿填报信息查询平台。
        </div>
    </div>
    <div class="order">
        <span style="white-space:pre">   </span><span class="line"></span>
        <span style="white-space:pre">   </span><span class="txt">各大学校情况</span>
        <span style="white-space:pre">   </span><span class="line"></span>
    </div>
    <div class="row mb-2">
        <div class="col-md-6">
            <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-primary"><h4>中考</h4></strong>
                    <%--<h3 class="mb-0">Featured post</h3>--%>
                    <%--<div class="mb-1 text-muted">Nov 12</div>--%>
                    <%--<p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>--%>
                    <div>
                        <div style="float: left;width: 30%">
                            <img src="../../../images/consultation/seniorExam.jpg"
                                 style="height: 120px;width: 120px;border-radius: 50%">
                        </div>
                        <div style="float: right;width: 70%">
                            <ul>
                                <c:forEach var="schNameList" items="${highSchNameList}" varStatus="vs">
                                    <li><a href="../highSchool/highScfroPage/${ schNameList.id}" target="_blank"><span style="color: #111012;">${ schNameList.schoolName}</span></a></li>
                                </c:forEach>
                                <li><a href="../highSchool/forwardHighSchoolListList"><span >查看更多</span></a></li>
                            </ul>
                            <a href="../highSchool/forwardDistrictDivision">学区划分</a>
                        </div>
                    </div>
                </div>
                <div class="col-auto d-none d-lg-block">
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-success"><h4>高考</h4></strong>
                    <%--<h3 class="mb-0">Post title</h3>--%>
                    <%--<div class="mb-1 text-muted">Nov 11</div>--%>
                    <%--<p class="mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>--%>
                    <div>
                        <div style="float: left;width: 30%">
                            <img src="../../../images/consultation/collegeExam.jpg"
                                 style="height: 120px;width: 120px;border-radius: 50%">
                        </div>
                        <div style="float: right;width: 70%">
                            <ul>
                                <c:forEach var="collageNameList" items="${collageNameList}" varStatus="vs">
                                    <li><a href="collageFroPage/${ collageNameList.id}"><span style="color: #111012;">${ collageNameList.collageName}</span></a></li>
                                </c:forEach>
                                <li><a href="forwardCollage" ><span >查看更多</span></a></li>
                            </ul>
                            <a href="#">志愿指导</a>
                            &nbsp;&nbsp;&nbsp;
                            <a href="collageScore">录取分数</a>
                        </div>
                    </div>
                </div>
                <div class="col-auto d-none d-lg-block">
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="../common/footer.jsp" %>
<script src="../../../libs/jQuery-3.4.1.min.js"></script>
<script src="../../../libs/bootstrap-4.3.1-dist/js/bootstrap.bundle.js"></script>
<script src="../../../libs/popper.min.js"></script>
<script src="../../../js/common/app-js.js"></script>
<script src="../../../js/index/index.js"></script>
</body>
</html>
