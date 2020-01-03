<%--
  Created by IntelliJ IDEA.
  User: lishngqi
  Date: 2019/12/31
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="cn.edu.sdtbu.webapp.entity.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>全国学校</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
    <meta http-equiv="expires" content="0">
    <title>首页</title>
    <link href="../../../css/index/index.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="../../../libs/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../libs/bootstrap-table/dist/bootstrap-table.min.css">
    <link href="../../../libs/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">
    <link href="../../../libs/editor.md-master/css/editormd.css" rel="stylesheet">
    <style>
        #jumbotron1{
            background-image: url(../../../images/consultation/collageList1.jpg);
            background-size:100% 100%;
            background-repeat: no-repeat;
            background-color: rgba(0, 0, 0, 0.4);
            height: 360px;
        }
        .checkbox {
            float: left;
            margin-right: 15px;
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
    <div class="alert alert-secondary" role="alert">
        <strong><span style="color: #1180ed">所在位置：</span></strong><span style="color: #1180ed">e学慕课/全国高校名单</span>
    </div>
    <form class="form-inline" style="margin-bottom: -20px">
        <div class="input-group mb-2 mr-sm-2">
            <div class="input-group-prepend">
                <div class="input-group-text">学校名字</div>
            </div>
            <input type="text" class="form-control" id="collageName" placeholder="">
        </div>
        <div class="input-group mb-2 mr-sm-2">
            <div class="input-group-prepend">
                <div class="input-group-text">学校类型</div>
            </div>
            <input type="text" class="form-control" id="title" placeholder="">
        </div>
        <div class="input-group mb-2 mr-sm-2">
            <div class="input-group-prepend">
                <div class="input-group-text">所在城市</div>
            </div>
            <input type="text" class="form-control" id="city" placeholder="">
        </div>
        <div class="input-group mb-2 mr-sm-1">
            <div class="input-group-prepend">
                <div class="input-group-text">所在省</div>
            </div>
            <input type="text" class="form-control" id="province" placeholder="">
        </div>

        <button type="button" class="btn btn-info mb-2"id="submitBt">提交</button>
        &nbsp;
        <button type="button" class="btn btn-warning mb-2" id="resetBt">重置</button>
    </form>

    <div class="col-md-12" >
        <table id="table" class="table-borderless table-hover table-striped" style="padding-top:20px">
        </table>
    </div>
</div>
    <%@include file="../common/footer.jsp" %>
    <script src="../../../libs/jQuery-3.4.1.min.js"></script>
    <script src="../../../libs/bootstrap-table/dist/bootstrap-table.min.js"></script>
    <script src="../../../libs/bootstrap-4.3.1-dist/js/bootstrap.bundle.js"></script>
    <script src="../../../libs/popper.min.js"></script>
    <script src="../../../js/common/app-js.js"></script>
    <script src="../../../libs/editor.md-master/editormd.js"></script>
    <script type="text/javascript">
        //网页前缀
        var prefix = constant.CTX;
        var selections = [];

        //控件
        var $table = $("#table");

        /**
         * @author: 李升起
         * @time: 2019年12月31日11:13
         */
        $(function(){
            initTable();
            //行点击监听事件
            $table.on('check.bs.table uncheck.bs.table ' +
                'check-all.bs.table uncheck-all.bs.table',
                function () {
                    selections = getIdSelections()
                });
            $table.on('all.bs.table', function (e, name, args) {
                console.log(name, args)
            })
        });

        //字段名称和对应ajax结果里面的value
        var columns=[{
            field: 'id',
            title: 'Item ID'
        }, {
            field: 'collageName',
            title: '大学名称',
            formatter:function (value ,row ,index) {
                return [
                    '<a href=\''+'collageFroPage/'+row.id+'\'target="view_window">'+row.collageName+'</a>'
                ].join("");
            }
        }, {
            field: 'collageIntro',
            title: '大学简介'
        }, {
            field: 'type',
            title: '学校类型'
        }, {
            field: 'city',
            title: '所在城市'
        }, {
            field: 'provinceName',
            title: '学校所在省'
        }, {
            field: 'websiteUrl',
            title: '学校官网',
            formatter:function (value ,row ,index) {
                return [
                    '<a href=\''+row.websiteUrl+'\'target="view_window">'+row.websiteUrl+'</a>'
                ].join("");
            }
        }, {
            field: 'title',
            title: '学校类型',
        },{
            title: '操作',
            align: 'center',
            //按钮和事件 注意：row是一个字符串不是一个json对象，必须传值row.id
            formatter: function(value, row, index) {
                var btns = [];

                var editBtn=  '<a id="edit" href="javascript:void(0)" onclick="onEditBtnClicked(\'' + row.id +'\')" title="Like"> <i class="fa fa-edit"></i> </a> ';
                var removeBtn =  '<a id="remove" href="javascript:void(0)" onclick="onRemoveBtnClicked(\'' + row.id +'\')" title="Like"> <i class="fa fa-trash"></i> </a> ';

                //加入控件组
                btns.push(editBtn);
                btns.push(removeBtn);

                //转为字符串html
                return btns.join('');
            }
        }
        ];

        /**编辑按钮点击事件*/
        function onEditBtnClicked(id){
            alert('You click edit action, row: ' + id);
        }

        /**删除按钮点击事件*/
        function onRemoveBtnClicked(id){
            alert('You click remove action, row: ' + id);
        }

        function initTable() {

            $('#table').bootstrapTable({
                columns: columns,
                locale:"zh-CN",
                class:"table table-striped table-hover table-borderless ",
                url:prefix+"consultation/collageList",        // 请求后台的URL（*）
                contentType: "application/x-www-form-urlencoded",   // 编码类型
                method: 'get',
                cache: false,                               // cache disabled
                toolbar: "toolbar",
                sortable: true,                                     // 是否启用排序
                sortStable: true,                                   // 设置为 true 将获得稳定的排序
                pagination: true,
                sidePagination: "server",
                pageSize : 20,//每页大小
                pageList : [30, 60, 90, 120],//可以选择每页大小
                striped: false,
                escape: false,
                showFooter: false,
                search: false,
                showSearch: true,
                showPageGo: true,
                showRefresh: true,
                showColumns: true,
                showToggle: true,
                showExport: false,
                responseHandler:function (res) {
                    return res;
                },
                queryParams: function (params) {
                    var curParams = {
                        // 传递参数查询参数
                        pageSize:       params.limit,
                        pageNum:        params.offset / params.limit + 1,
                        searchValue:    params.search,
                        orderByColumn:  params.sort,
                        isAsc:          params.order,
                        collageName:    $("#collageName").val(),
                        title:    $("#title").val(),
                        city:    $("#city").val(),
                        province:    $("#province").val()
                    };
                    return curParams;
                }
            })
        }

        $("#submitBt").click(function(){
            $("#table").bootstrapTable("refresh");
        });
        $("#resetBt").click(function(){
            $("#collageName").val("");
            $("#title").val("");
            $("#city").val("");
            $("#province").val("");
        });

    </script>
</body>
</html>
