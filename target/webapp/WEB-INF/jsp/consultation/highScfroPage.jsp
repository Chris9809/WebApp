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
    <link rel="stylesheet" href="../../../libs/editor.md-master/css/editormd.preview.css" />
    <style>
        #jumbotron1{
            background-image: url(${highShcoolList.schoolImage});
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
                <h1><b><span>${highShcoolList.schoolName}</span></b></h1>
                <h5>Inner Mongolia University</h5>
                <div style="float: left;width: 70%">
                    <blockquote class="blockquote mb-0">
                        <p class="page-post-meta"><span style="font-family: NSimSun">${highShcoolList.introPath}</span></p>
                        <footer class="blockquote-footer">Someone famous in <cite title="Source Title">Source Title</cite></footer>
                    </blockquote>
                </div>
                <div style="float: right;width: 30%;margin-right: -100px">
                    <div >
                        <%--<img src="../../../images/consultation/colForPage/taiwan.PNG" alt="" style="width: 225px;height: 225px">--%>
                        <img src="${highShcoolList.schoolLogo}" alt="" style="width: 225px;height: 225px">
                    </div>
                </div>
                <div class="zfwj_top">
                    <table width="730">
                        <tr>
                            <th>创办时间：</th>
                            <td class="zfwj_th_td">1959年06月11日</td>
                        </tr>
                        <tr>
                            <th>主管部门：</th>
                            <td class="zfwj_th_td">烟台市教育局</td>
                            <th>学校网址：</th>
                            <td class="zfwj_th_td2"><a href="${highShcoolList.websiteUrl}" target="_blank">${collageList.websiteUrl}</a></td>
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

<script src="../../../libs/editor.md-master/lib/marked.min.js"></script>
<script src="../../../libs/editor.md-master/lib/prettify.min.js"></script>
<script src="../../../libs/editor.md-master/lib/raphael.min.js"></script>
<script src="../../../libs/editor.md-master/lib/underscore.min.js"></script>
<script src="../../../libs/editor.md-master/lib/sequence-diagram.min.js"></script>
<script src="../../../libs/editor.md-master/lib/flowchart.min.js"></script>
<script src="../../../libs/editor.md-master/lib/jquery.flowchart.min.js"></script>
<script src="../../../libs/editor.md-master/editormd.js"></script>

<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    // 显示标题，图例和空的坐标轴
    myChart.setOption({
        title: {
            text: '历年中考分数'
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                label: {
                    backgroundColor: '#6a7985'
                }
            }
        },
        legend: {
            data: ['最高分', '最低分', '平均分']
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
        xAxis: [{
            type: 'category',
            boundaryGap: false,
            data: ['二零一一', '二零一二', '二零一三', '二零一四', '二零一五', '二零一六', '二零一七']
        }],
        yAxis: [{
            type: 'value'
        }],
        series: [{
            name: '最低分',
            type: 'line',
            label: {
                normal: {
                    show: true,
                }
            },
            data: [150, 232, 201, 154, 190, 330, 410],
            markPoint: {
                data: [{
                    type: 'max', // 类型
                    symbol: 'pin', // 标志图形类型，默认自动选择（8种类型循环使用，不显示标志图形可设为'none'），默认循环选择类型有：'circle' | 'rectangle' | 'triangle' | 'diamond' |'emptyCircle' | 'emptyRectangle' | 'emptyTriangle' | 'emptyDiamond' 另外，还支持五种更特别的标志图形'heart'（心形）、'droplet'（水滴）、'pin'（标注）、'arrow'（箭头）和'star'（五角星），这并不出现在常规的8类图形中，但无论是在系列级还是数据级上你都可以指定使用，同时，'star' + n（n>=3)可变化出N角星，如指定为'star6'则可以显示6角星
                    name: '最大值'
                },
                    {
                        type: 'min', // 类型
                        symbol: 'pin',
                        name: '最小值'
                    },
                ],
                // 特殊标注文字
                label: {
                    normal: {
                        show: true,
                        //position: 'top', // 文字位置
                        // 显示的文字
                        formatter: '{b}：{c}',
                    }
                },
                // 触发操作
                tooltip: {
                    show: true, // 是否显示
                    formatter: '{b}：{c}', // 内容格式器 a（系列名称），b（类目值），c（数值）, d（无）
                    trigger: 'item', // 触发类型，默认数据触发，见下图，可选为：'item' | 'axis'
                },
            },
            markLine: {
                data: [{
                    type: 'average',
                    name: '平均值',
                    itemStyle: {
                        normal: {
                            color: 'orange'
                        }
                    }
                }]
            },
            // 折线图圆点
            label: {
                normal: {
                    show: true,
                    //position: 'bottom', // 文字位置
                    // 显示的文字
                    formatter: '{c}',
                    textStyle: {
                        color: '#000' // 文字颜色
                    }
                }
            }

        },
            {
                name: '平均分',
                type: 'line',
                label: {
                    normal: {
                        show: true,

                    }
                },
                data: [320, 332, 301, 334, 390, 330, 320],
                markPoint: {
                    data: [{
                        type: 'max', // 类型
                        symbol: 'pin', // 标志图形类型，默认自动选择（8种类型循环使用，不显示标志图形可设为'none'），默认循环选择类型有：'circle' | 'rectangle' | 'triangle' | 'diamond' |'emptyCircle' | 'emptyRectangle' | 'emptyTriangle' | 'emptyDiamond' 另外，还支持五种更特别的标志图形'heart'（心形）、'droplet'（水滴）、'pin'（标注）、'arrow'（箭头）和'star'（五角星），这并不出现在常规的8类图形中，但无论是在系列级还是数据级上你都可以指定使用，同时，'star' + n（n>=3)可变化出N角星，如指定为'star6'则可以显示6角星
                        name: '最大值'
                    },
                        {
                            type: 'min', // 类型
                            symbol: 'pin',
                            name: '最小值'
                        },
                    ],
                    // 特殊标注文字
                    label: {
                        normal: {
                            show: true,
                            //position: 'top', // 文字位置
                            // 显示的文字
                            formatter: '{b}：{c}',
                        }
                    },
                    // 触发操作
                    tooltip: {
                        show: true, // 是否显示
                        formatter: '{b}：{c}', // 内容格式器 a（系列名称），b（类目值），c（数值）, d（无）
                        trigger: 'item', // 触发类型，默认数据触发，见下图，可选为：'item' | 'axis'
                    },
                },
                markLine: {
                    data: [{
                        type: 'average',
                        name: '平均值',
                        itemStyle: {
                            normal: {
                                color: 'pink'
                            }
                        }
                    }]
                },
                // 折线图圆点
                label: {
                    normal: {
                        show: true,
                        //position: 'bottom', // 文字位置
                        // 显示的文字
                        formatter: '{c}',
                        textStyle: {
                            color: '#000' // 文字颜色
                        }
                    }
                }
            },
            {
                name: '最高分',
                type: 'line',
                label: {
                    normal: {
                        show: true,
                    }
                },
                data: [820, 932, 901, 934, 1290, 1330, 1320],
                markPoint: {
                    data: [{
                        type: 'max', // 类型
                        symbol: 'pin', // 标志图形类型，默认自动选择（8种类型循环使用，不显示标志图形可设为'none'），默认循环选择类型有：'circle' | 'rectangle' | 'triangle' | 'diamond' |'emptyCircle' | 'emptyRectangle' | 'emptyTriangle' | 'emptyDiamond' 另外，还支持五种更特别的标志图形'heart'（心形）、'droplet'（水滴）、'pin'（标注）、'arrow'（箭头）和'star'（五角星），这并不出现在常规的8类图形中，但无论是在系列级还是数据级上你都可以指定使用，同时，'star' + n（n>=3)可变化出N角星，如指定为'star6'则可以显示6角星
                        name: '最大值'
                    },
                        {
                            type: 'min', // 类型
                            symbol: 'pin',
                            name: '最小值'
                        },
                    ],
                    // 特殊标注文字
                    label: {
                        normal: {
                            show: true,
                            //position: 'top', // 文字位置
                            // 显示的文字
                            formatter: '{b}：{c}',
                        }
                    },
                    // 触发操作
                    tooltip: {
                        show: true, // 是否显示
                        formatter: '{b}：{c}', // 内容格式器 a（系列名称），b（类目值），c（数值）, d（无）
                        trigger: 'item', // 触发类型，默认数据触发，见下图，可选为：'item' | 'axis'
                    },
                },
                markLine: {
                    data: [{
                        type: 'average',
                        name: '平均值',
                        itemStyle: {
                            normal: {
                                color: 'blue'
                            }
                        }
                    }]
                },
                // 折线图圆点
                label: {
                    normal: {
                        show: true,
                        //position: 'bottom', // 文字位置
                        // 显示的文字
                        formatter: '{c}',
                        textStyle: {
                            color: '#000' // 文字颜色
                        }
                    }
                }
            }


        ]
    });
    //myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
    var years = []; //类别数组（实际用来盛放X轴坐标值）
    var max_scores = []; //销量数组（实际用来盛放Y坐标值）
    var avg_scores = [];
    var min_scores = [];

    $.ajax({
        type: "get",
        async: true, //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url: "../../highSchool/calendarYearScores/1", //请求发送到 处
        data: {},
        dataType: "json", //返回数据形式为json
        success: function(result) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            if (result) {
                for (var i = 0; i < result.length; i++) {
                    years.push(result[i].year); //挨个取出年份并填入年份数组
                }
                for (var i = 0; i < result.length; i++) {
                    max_scores.push(result[i].maxScore); //挨个取出年份并填入年份数组
                }
                for (var i = 0; i < result.length; i++) {
                    avg_scores.push(result[i].avgScore); //挨个取出年份并填入年份数组
                }
                for (var i = 0; i < result.length; i++) {
                    min_scores.push(result[i].minScore); //挨个取出年份并填入年份数组
                }
                myChart.hideLoading(); //隐藏加载动画
                myChart.setOption({ //加载数据图表
                    xAxis: {
                        data: years
                    },
                        series: [
                            {// 根据名字对应到相应的系列
                            name: '平均分',
                            areaStyle: {},
                            data: avg_scores},
                            {// 根据名字对应到相应的系列
                                name: '最高分',
                                areaStyle: {},
                                data: max_scores},
                            {// 根据名字对应到相应的系列
                                name: '最低分',
                                areaStyle: {},
                                data: min_scores}
                            ]
            });

            }

        },
        error: function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
            myChart.hideLoading();
        }
    })
</script>
</body>
</html>
