<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2019/12/31
  Time: 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="cn.edu.sdtbu.webapp.entity.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>简介</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
    <meta http-equiv="expires" content="0">
    <title>首页</title>
    <link rel="stylesheet" type="text/css" href="../../../images/consultation/colForPage/css/style.css"/>
    <link href="../../../css/main/main.css" rel="stylesheet" type="text/css">
    <link href="../../../css/index/index.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="../../../libs/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <link href="../../../libs/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">
    <style>
        #jumbotron1{
            background-image: url(${collageList.collageImage});
            background-size:100% 100%;
            background-repeat: no-repeat;
            background-color: rgba(0, 0, 0, 0.4);
            height: 360px;
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
</div>
<!-- 头部开始-->
    <div id="jumbotron1" class="jumbotron p-4 p-md-5 text-white rounded bg-dark">
        <div class="col-md-6 px-0">
            <h1 class="display-4 font-weight-bold"></h1>
            <p class="lead my-3"></p>
            <p class="lead mb-0"><a href="#" class="text-white font-weight-bold"></a></p>
        </div>
    </div>
    <!--头部结束-->

    <div class="container">
        <div class="card ">
            <div class="shadow-none p-3 mb-5 bg-light rounded">
                <div class="card-body">
                    <h1><b><span>${collageList.collageName}</span></b></h1>
                    <h5>Inner Mongolia University</h5>
                    <div style="float: left;width: 70%">
                        <blockquote class="blockquote mb-0">
                            <p class="page-post-meta"><span style="font-family: NSimSun">${collageList.collageIntro}</span></p>
                            <footer class="blockquote-footer">Someone famous in <cite title="Source Title">Source Title</cite></footer>
                        </blockquote>
                    </div>
                    <div style="float: right;width: 30%;margin-right: -100px">
                            <div >
                                <%--<img src="../../../images/consultation/colForPage/taiwan.PNG" alt="" style="width: 225px;height: 225px">--%>
                                <img src="${collageList.collageLogo}" alt="" style="width: 225px;height: 225px">
                            </div>
                    </div>
                    <div class="zfwj_top">
                        <table width="730">

                            <tr>
                                <th>创办时间：</th>
                                <td class="zfwj_th_td">1959年06月11日</td>
                                <th>学校类别：</th>
                                <td class="zfwj_th_td2">${collageList.type}</td>
                            </tr>
                            <tr>
                                <th>主管部门：</th>
                                <td class="zfwj_th_td">烟台市教育局</td>
                                <th>学校网址：</th>
                                <td class="zfwj_th_td2"><a href="${collageList.websiteUrl}" target="_blank">${collageList.websiteUrl}</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

<div class="container">

    <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <h5>历年成绩折线图↑</h5>

    <!--body结束-->
    <div class="ending">
        <div class="select">
            <h3 class="pb-2 mb-4 font-italic ">
                上级文档
            </h3>
            <h5 class="font-italic">点击下载附件↓</h5>
            <a href="">
                <h6>2020内蒙古大学的教学目标和录取分数线</h6>
            </a>
            <a href="">
                <h6>2020内蒙古大学的教学目标和录取分数线</h6>
            </a>
            <a href="">
                <h6>2020内蒙古大学的教学目标和录取分数线</h6>
            </a>

        </div>
    </div>
</div>
<style>
    .zfwj_top table {
        font-size: 14px;
        font-family: 宋体;
        line-height: 30px;
    }
    .zfwj_top h1 {
        font-size: 28px;
        text-align: center;
        font-weight: normal;
        padding: 20px 50px;
    }
    .zfwj_top p {
        line-height: 45px;
    }
    .zfwj_top h2 {
        clear: both;
        text-align: center;
        font-size: 15px;
    }
    #zfwj_top th {
        width: 85px;
    }
</style>

<%@include file="../common/footer.jsp" %>
<script src="../../../libs/jQuery-3.4.1.min.js"></script>
<script src="../../../libs/bootstrap-4.3.1-dist/js/bootstrap.bundle.js"></script>
<script src="../../../libs/popper.min.js"></script>
<script src="../../../js/common/app-js.js"></script>
<script src="../../../js/index/index.js"></script>
<script src="../../../images/consultation/colForPage/js/echarts.min.js"></script>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据
    var option = {
        title: {
            text: '历年分数'
        },
        tooltip : {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                label: {
                    backgroundColor: '#6a7985'
                }
            }
        },
        legend: {
            data:['邮件营销','联盟广告','视频广告','直接访问','搜索引擎']
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis : [
            {
                type : 'category',
                boundaryGap : false,
                data : ['周一','周二','周三','周四','周五','周六','周日']
            }
        ],
        yAxis : [
            {
                type : 'value'
            }
        ],
        series : [
            {
                name:'邮件营销',
                type:'line',
                stack: '总量',
                areaStyle: {},
                data:[120, 132, 101, 134, 90, 230, 210]
            },
            {
                name:'联盟广告',
                type:'line',
                stack: '总量',
                areaStyle: {},
                data:[220, 182, 191, 234, 290, 330, 310]
            },
            {
                name:'视频广告',
                type:'line',
                stack: '总量',
                areaStyle: {},
                data:[150, 232, 201, 154, 190, 330, 410]
            },
            {
                name:'直接访问',
                type:'line',
                stack: '总量',
                areaStyle: {normal: {}},
                data:[320, 332, 301, 334, 390, 330, 320]
            },
            {
                name:'搜索引擎',
                type:'line',
                stack: '总量',
                label: {
                    normal: {
                        show: true,
                        position: 'top'
                    }
                },
                areaStyle: {normal: {}},
                data:[820, 932, 901, 934, 1290, 1330, 1320]
            }
        ]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
</body>
</html>
