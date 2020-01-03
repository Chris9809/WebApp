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
    <link href="css/index/index.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="libs/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <link href="libs/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">
    <style>
        .jumbotron{
            background-image: url(images/banner.png);
            background-size:100% 100%;
            background-repeat: no-repeat;
            background-color: rgba(0, 0, 0, 0.4);
        }
    </style>
</head>
<body>
<div class="container">
    <%
        User curUser = (User) session.getAttribute("curUser");
        if(curUser==null){
    %>
        <%@include file="WEB-INF/jsp/common/topbar.jsp" %>
    <%}
    else
    {
    %>
        <%@include file="WEB-INF/jsp/common/topbar_login.jsp" %>
    <%
        }
    %>
    <%@include file="WEB-INF/jsp/common/navbar.jsp" %>
    <div class="jumbotron p-4 p-md-5 text-white rounded bg-dark">
        <div class="col-md-8 px-0">
            <h1 class="display-4 font-weight-bold">还在参加传统补习班？</h1>
            <p class="lead my-3">2021年高考冲刺班上线，假期强化重要知识点。购买新高考冲刺班课程，赠送择校选专业指导。</p>
            <p class="lead mb-0"><a href="#" class="text-white font-weight-bold">了解更多...</a></p>
        </div>
    </div>
    <h2 class="blog-post-title text-center mb-4">中高考资讯</h2>
    <p class="blog-post-meta text-center">第一时间提供官方、准确的中高考资讯和政策解析 <a class="fa fa-link text-decoration-none ml-2" href="">了解更多</a></p>
    <div class="row mb-2">
        <div class="col-md-6">
            <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-3 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-primary">中考</strong>
                    <h3 class="mb-0 text-truncate">烟台8所高中招生政策改变</h3>
                    <div class="mb-1 text-muted">Nov 12</div>
                    <p class="card-text mb-auto">中考迎来真正意义上的重大改革，这将意味着什么呢？原本全国范围内的初升高只有40%-55%升学率，在2020年的中考中是升还是降呢？</p>
                    <a href="#" class="stretched-link">了解更多...</a>
                </div>
                <div class="col-auto d-none d-lg-block">
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-3 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-success">高考</strong>
                    <h3 class="mb-0 text-truncate">高考"7选3"是什么？</h3>
                    <div class="mb-1 text-muted">Nov 11</div>
                    <p class="mb-auto">按我省新高考政策,除必考的语、数、外3门课程外,考生需从思想政治、历史、地理、物理、化学、生物、技术7门选考科目中,选择3门作为高考选考科目。</p>
                    <a href="#" class="stretched-link">了解更多...</a>
                </div>
                <div class="col-auto d-none d-lg-block">
                </div>
            </div>
        </div>

    </div>
</div>

<main role="main" class="container" style="min-height: 600px">
    <div class="row">
        <div class="col-md-10 blog-main">
            <div class="blog-post">
                <div id="school-intro">

                </div>
                <h2 class="blog-post-title text-center mb-4">用实力铸就e学慕课</h2>
                <p class="blog-post-meta text-center">让每个孩子领先在起跑线 <a class="fa fa-link text-decoration-none ml-2" href="">学校简介</a></p>

                <p>Cum sociis natoque penatibus et magnis <a href="#">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>
                <blockquote>
                    <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                </blockquote>
                <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
                <hr>
            </div><!-- /.blog-post -->

            <div class="blog-post">
                <h2 class="blog-post-title text-center mb-4">名师教学不废话，讲干货</h2>
                <p class="blog-post-meta text-center">讲师来自于多所实力高中骨干教师<a class="fa fa-link text-decoration-none ml-2" href="">名师介绍</a></p>
                <div class="card-deck">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="images/index/t1.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">李升起</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="images/index/t2.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">叶李虎</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="images/index/t3.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">刘琴</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="blog-post">
                <h2 class="blog-post-title text-center mb-4">多种课程体系，全方位打击知识薄弱点</h2>
                <p class="blog-post-meta text-center">文科？理科？一网打尽<a class="fa fa-link text-decoration-none ml-2" href="">课程体系</a></p>
                <div class="row">
                    <!--初中-->
                    <div class="col-md-6">
                        <h3 class="pb-2 mb-2 text-center border-bottom">
                            初中
                        </h3>
                        <div class="row">
                            <div class="media p-4 border-bottom">
                                <img class="mr-5" src="images/index/语文.png" style="height: 50px" alt="Generic placeholder image">
                                <div class="media-body">
                                    <h5 class="mt-0">语文</h5>
                                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="media p-4 border-bottom">
                                <img class="mr-5" src="images/index/数学.png" style="height: 50px" alt="Generic placeholder image">
                                <div class="media-body">
                                    <h5 class="mt-0">数学</h5>
                                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="media p-4 border-bottom">
                                <img class="mr-5" src="images/index/英语.png" style="height: 50px" alt="Generic placeholder image">
                                <div class="media-body">
                                    <h5 class="mt-0">英语</h5>
                                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="media p-4 border-bottom">
                                <img class="mr-5" src="images/index/计算机.png" style="height: 50px" alt="Generic placeholder image">
                                <div class="media-body">
                                    <h5 class="mt-0">科学</h5>
                                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--高中-->
                    <div class="col-md-6">
                        <h3 class="pb-2 mb-2 text-center border-bottom">
                            高中
                        </h3>
                        <div class="row">
                            <div class="media p-4 border-bottom">
                                <img class="mr-5" src="images/index/语文.png" style="height: 50px" alt="Generic placeholder image">
                                <div class="media-body">
                                    <h5 class="mt-0">语文</h5>
                                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="media p-4 border-bottom">
                                <img class="mr-5" src="images/index/数学.png" style="height: 50px" alt="Generic placeholder image">
                                <div class="media-body">
                                    <h5 class="mt-0">数学</h5>
                                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="media p-4 border-bottom">
                                <img class="mr-5" src="images/index/英语.png" style="height: 50px" alt="Generic placeholder image">
                                <div class="media-body">
                                    <h5 class="mt-0">英语</h5>
                                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="media p-4 border-bottom">
                                <img class="mr-5" src="images/index/物理.png" style="height: 50px" alt="Generic placeholder image">
                                <div class="media-body">
                                    <h5 class="mt-0">物理</h5>
                                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="media p-4 border-bottom">
                                <img class="mr-5" src="images/index/化学.png" style="height: 50px" alt="Generic placeholder image">
                                <div class="media-body">
                                    <h5 class="mt-0">化学</h5>
                                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="media p-4 border-bottom">
                                <img class="mr-5" src="images/index/地理.png" style="height: 50px" alt="Generic placeholder image">
                                <div class="media-body">
                                    <h5 class="mt-0">地理</h5>
                                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
            <!-- /.blog-post -->

            <%--<nav class="blog-pagination">--%>
            <%--    <a class="btn btn-outline-primary" href="#">Older</a>--%>
            <%--    <a class="btn btn-outline-secondary disabled" href="#" tabindex="-1" aria-disabled="true">Newer</a>--%>
            <%--</nav>--%>

        </div><!-- /.blog-main -->

        <aside class="col-md-2 blog-sidebar">
            <div class="p-4 mb-3 bg-light rounded">
                <h4 class="font-italic">About</h4>
                <p class="mb-0">Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis</p>
            </div>

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

            <div class="p-4">
                <h4 class="font-italic">Elsewhere</h4>
                <ol class="list-unstyled">
                    <li><a href="#">GitHub</a></li>
                    <li><a href="#">Twitter</a></li>
                    <li><a href="#">Facebook</a></li>
                </ol>
            </div>
        </aside><!-- /.blog-sidebar -->

    </div><!-- /.row -->

</main><!-- /.container -->
<%@include file="WEB-INF/jsp/common/footer.jsp" %>
<script src="libs/jQuery-3.4.1.min.js"></script>
<script src="libs/bootstrap-4.3.1-dist/js/bootstrap.bundle.js"></script>
<script src="libs/popper.min.js"></script>
<script src="js/common/app-js.js"></script>
<script src="js/index/index.js"></script>
</body>
</html>
