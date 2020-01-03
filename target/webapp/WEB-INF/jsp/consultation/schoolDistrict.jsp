<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2020/1/2
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="cn.edu.sdtbu.webapp.entity.User" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>2018年烟台市区初中招生学区分布图</title>
    <script src="http://www.qinzhou.gov.cn/js/jquery-1.7.2.min.js"></script>
    <script src="http://www.qinzhou.gov.cn/js/font.js"></script>
    <link href="http://www.qinzhou.gov.cn/css/substyle2.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-table/1.12.0/locale/bootstrap-table-zh-CN.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-table/1.15.4/bootstrap-table.min.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap-table/1.15.4/bootstrap-table.min.css" rel="stylesheet">
    <link href="../../../images/consultation/schoolDistrict/fenqu.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #zfwj_title {
            text-align: center;
            font-family: 宋体;
            letter-spacing: 0pt;
            font-size: 22pt;
            line-height: 35pt;
            font-weight: bold;
        }

        .zfwj_xly02 {
            width: 1150px;
            height: auto;
            overflow: hidden;
            border: 1px solid #ccc;
            margin: 0 auto;
            padding: 40px 115px;
            margin-top: 20px;
        }

        #zfwj_wh {
            text-align: center;
            font-size: 14pt;
            line-height: 35pt;
        }

        #zfwj_nr {
            font-size: 14pt;
            font-family: 宋体;
            line-height: 35pt;
        }

        #zfwj_data_title div {
            width: 300px;
            text-align: center;
            font-size: 14pt;
            font-family: 宋体;
            margin-left: 425px;
            line-height: 30pt;
        }

        #zfwj {
            margin-top: 50px;
            box-shadow: 3px 3px 3px #ccc;
            border: 1px solid #ccc;
            padding: 50px 50px 20px 50px;
        }

        #zfwj_top {
            width: 776px;
            height: auto;
            padding: 20px 35px;
            overflow: hidden;
            margin: 0 auto;
            box-shadow: 3px 3px 3px #ccc;
            border: 1px solid #b3b3b3;
            margin-top: 20px;
        }

        #zfwj_top table {
            font-size: 14px;
            font-family: 宋体;
            line-height: 30px;
        }

        #zfwj_top h1 {
            font-size: 28px;
            text-align: center;
            font-weight: normal;
            padding: 20px 50px;
        }

        #zfwj_top p {
            line-height: 45px;
        }

        #zfwj_top h2 {
            clear: both;
            text-align: center;
            font-size: 15px;
        }

        #zfwj_top th {
            width: 85px;
        }

        #zfwj_th_td {
            width: 230px;
        }

        #zfwj_th_td2 {
            width: 350px;
        }

        #zfwj_bottom {
            width: 98%;
            height: 60px;
            border-top: 1px solid #b3b3b3;
            margin-top: 60px;
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
<div class="bodyimg">

<div class="header">
    <div class="zyqh">
    </div>
</div>
<div class="navo">
    <ul>
        <li class="li"><a href="http://www.yantai.gov.cn/index.html" class="nav_cell">首页</a></li>
        <li class="li"> <a href="http://www.yantai.gov.cn/col/col11807/index.html" class="nav_cell" target="_blank">政务公开</a></li>
        <li class="li"> <a href="http://www.yantai.gov.cn/col/col11773/index.html" class="nav_cell" target="_blank">网上办事</a></li>
        <li class="li"> <a href="http://www.yantai.gov.cn/col/col11793/index.html" target="_blank" class="nav_cell">要闻动态</a>
        </li>
        <li class="li"> <a href="http://www.yantai.gov.cn/col/col11783/index.html" target="_blank">政民互动</a> </li>
        <li class="li"> <a href="http://www.yantai.gov.cn/col/col11747/index.html" target="_blank" class="nav_cell">概览烟台</a></li>
    </ul>
</div>
<div class="main">
    <div style="float:right; margin-right:30px;">
        <!--分享开始-->
        <div class="bdsharebuttonbox">
            <a href="#" class="bds_more" data-cmd="more"></a>
            <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
            <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
            <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
        </div>
        <!--分享结束-->
    </div>
    <div class="zfwj_xly02">
        <div id="zfwj_top">
            <table width="730">

                <tr>
                    <th>索 引 号：</th>
                    <td id="zfwj_th_td">165427000081053410/2019-32763</td>
                    <th>主题分类：</th>
                    <td id="zfwj_th_td2">教育</td>
                </tr>
                <tr>
                    <th>发文机关：</th>
                    <td id="zfwj_th_td">烟台市教育局</td>
                    <th>成文日期：</th>
                    <td id="zfwj_th_td2"> 2019年06月11日 </td>
                </tr>
                <tr>
                    <th>标　　题：</th>
                    <td colspan="3"> 2019年烟台市重点中学学区划分 </td>
                </tr>
                <tr>
                    <th>发文字号：</th>
                    <td id="zfwj_th_td"> </td>
                    <th>发布日期：</th>
                    <td id="zfwj_th_td2"> 2019年06月12日</td>
                </tr>
            </table>

        </div>
        <div id="zfwj">
            <div id="zfwj_title">2019年烟台市重点中学学区划分</div>
            <br />
            <br />
            <div class="TRS_Editor">
                <p align="justify">烟台市区2019年重点中学学区划分及招生计划方案（学区图）</p>
                <p align="justify">&nbsp;</p>
                <p align="justify">
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">学校</th>
                            <th scope="col">招生计划</th>
                            <th scope="col">学区范围</th>
                            <th scope="col">备注</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">市一中</th>
                            <td width="20px">660</td>
                            <td><p class="p" style="margin-bottom: 0pt; word-break: break-all; margin-top: 0pt; line-height: 16.2pt"><b><span
                    style="font-size: 8pt; font-family: 宋体; font-weight: bold">西桥头—滨江北路西面往南接一马路入口—中山路东面往北—新兴街南面往东接小花坛—南珠西大街北面往西接民乐路沿东面往北—向阳街北面往西接大道沿东面往北—子材西大街南面—西桥头所形成的区域。</span></b></p></td>
                <td></td>
                </tr>
                <tr>
                    <th scope="row">市二中</th>
                    <td>1000</td>
                    <td><p class="p" style="margin-bottom: 0pt; word-break: break-all; margin-top: 0pt; line-height: 16.2pt"><b><span
                            style="font-size: 8pt; font-family: 宋体; font-weight: bold">北进城路口接钦州湾大道西面往南—子材西大街沿北面往西接北部湾大道西面往南—南珠西大街北面往西市区范围—北进城路口所形成的区域。</span></b></p></td>
                    <td><p class="p" style="margin-bottom: 0pt; word-break: break-all; margin-top: 0pt; line-height: 16.2pt"><b><span
                            style="font-size: 8pt; font-family: 宋体; font-weight: bold">市二中限招在学区内实际居住的烟台市区户籍生和监护人在学区内有房产并实际居住的非烟台市区户籍生。</span></b></p></td>
                </tr>
                <tr>
                    <th scope="row">市三中</th>
                    <td>1400</td>
                    <td><p class="p" style="margin-bottom: 0pt; word-break: break-all; margin-top: 0pt; line-height: 16.2pt"><b><span
                            style="font-size: 8pt; font-family: 宋体; font-weight: bold">北进城路口接钦州湾大道西面往南—子材西大街沿北面往西接北部湾大道西面往南—南珠西大街北面往西市区范围—北进城路口所形成的区域。</span></b></p></td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">市四中</th>
                    <td>1200</td>
                    <td><p class="p" style="margin-bottom: 0pt; word-break: break-all; margin-top: 0pt; line-height: 16.2pt"><b><span
                            style="font-size: 8pt; font-family: 宋体; font-weight: bold">滨海路151号黄海明珠以南凤凰山以东上市里以西佳世客以北。</span></b></p></td>
                    <td></td>
                </tr>
                </tbody>
                </table>
                </p>
                <p align="justify">&nbsp;</p>
                <p align="justify">&nbsp;</p>
                <p align="justify">&nbsp;</p>
                <p align="justify">&nbsp;
                    2019年烟台市区重点中学学区分布图</p>
                <p align="justify">&nbsp;</p>
                <p align="justify">&nbsp;</p>
                <p align="justify">&nbsp;<img style="border-left-width: 0px; height: 792px; border-right-width: 0px; width: 834px; border-bottom-width: 0px; border-top-width: 0px"
                                              alt="" width="800" height="800" src="images/body/xuequ.png" /></p>
                <p align="justify">&nbsp;</p>
                <p align="justify">&nbsp;</p>
                <p align="justify">&nbsp;</p>
                <p align="justify">&nbsp;</p>
                <p align="justify">&nbsp;</p>
            </div>
            <br />
            <br />
            <ul>

            </ul>
            <br />
            <div id="zfwj_bottom">
                <table style="margin:0 auto; padding:0 10px;">
                    <tr>
                        <td>
                            <div class="divipt12">
                                <a href="javascript:window.print()">打印本页</a>
                                <a href="javascript:window.close()">关闭窗口</a>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
<style type="text/css">
    .dbqt {
        background-color: #f8feff;
        border-top: 25px solid #f8feff;
        margin-top: 25px;
        width: 1100px;
        margin: auto;
    }

    .dbqt1 {
        height: auto;
        line-height: 40px;
        background-color: #f8feff;
        text-align: center;
        color: #545454;
    }

    .dbqt1 a {
        padding: 0 10px;
        font-size: 16px;
        text-decoration: none;
    }

    .dbqt1 a:hover {
        color: #c40000;
    }

    .dbqt2 {
        width: 1100px;
        height: 165px;
        margin: auto;
        padding: 0px 0px 55px 0px;
    ;
        font-size: 14px;
        color: #666;
        line-height: 22px;
        text-align: center;
    }

    .dbqt3 {
        position: relative;
    }

    .dbqt3 p {
        line-height: 30px;
        font-size: 14px;
    }

    .dbqt3 a:hover {
        color: #c40000;
    }

    .dbqt4 a {
        margin: 0px 10px;
    }

    .fgsx {
        margin: 0px 10px;
    }
</style>

<!--尾部开始-->
<div class="dbqt mt15">
    <div class="dbqt1">
        <a href="http://www.yantai.gov.cn/col/col12314/index.html" target="_blank">网站地图</a><span class="fgsx">|</span>
        <a href="http://www.yantai.gov.cn/col/col12313/index.html">网站声明</a><span class="fgsx">|</span>
        <a href="http://www.yantai.gov.cn/col/col12315/index.html" target="_blank">联系我们</a>

    </div>
    <div class="dbqt2" style="padding: 0px 0px 5px 0px;height: 100px;">
        <div class="dbqt3">
            <%--<div style="float:left;text-align:center; margin-left:110px;" class="dbqt4">--%>
                <%--<a href="http://bszs.conac.cn/sitename?method=show&id=0D48A84D75CF6974E053012819AC263F" target="_blank">--%>
                    <%--<img src="../../../images/consultation/schoolDistrict../../../images/ftimg01.png" border="0" width="52" hight="62" />--%>
                <%--</a>--%>
            <%--</div>--%>
            <%--<div style="float:right;text-align:center; margin-right:50px;" class="dbqt4">--%>
                <%--<a href="http://121.43.68.40/exposure/jiucuo.html?site_code=4507000042&url=http%3A%2F%2Fwww.qinzhou.gov.cn%3A9000%2Fpreview%2Fqzzf%2F"--%>
                   <%--target="_blank">--%>
                    <%--<img src="../../../images/ftimg02.png" border="0" width="110" hight="55" />--%>
                <%--</a>--%>
            <%--</div>--%>
            <div style="text-align:center; width:760px; padding:0px;">
                <p style="margin:10px">主办：烟台市人民政府办公室<span class="fgsx">|</span>承办：烟台市人民政府办公室电子政务中心&nbsp;&nbsp;
                </p>
            </div>

        </div>

    </div>
</div>
</div>
<!-- 分享转载 -->
<script>
    window._bd_share_config = {
        "common": {
            "bdSnsKey": {},
            "bdText": "",
            "bdMini": "2",
            "bdMiniList": false,
            "bdPic": "",
            "bdStyle": "0",
            "bdSize": "24"
        },
        "share": {}
    };
    with(document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src =
        'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];
</script>
</body>
</html>
