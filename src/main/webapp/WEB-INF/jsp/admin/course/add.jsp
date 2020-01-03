<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>管理员端首页</title>
    <link href="../../../../css/admin/main.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="../../../../libs/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../../libs/bootstrap-table/dist/bootstrap-table.min.css">
    <link href="../../../../libs/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">
    <link href="../../../../libs/editor.md-master/css/editormd.css" rel="stylesheet">
    <link href="../../../../libs/bootstrap-fileinput-master/css/fileinput.min.css" rel="stylesheet">
    <link href="../../../../libs/bootstrap-fileinput-master/themes/explorer/theme.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <%@include file="../../common/topbar_login.jsp" %>
</div>
<main role="main" class="container" >
    <div class="row">

        <div class="col-md-2">
            <jsp:include page="../../common/admin/sidebar.jsp">
                <jsp:param  name="path" value="course" />
            </jsp:include>
        </div>
        <div class="col-md-10">
            <nav class="mt-3 " aria-label="breadcrumb">
                <ol class="breadcrumb bg-white">
                    <li class="text-primary">当前位置：</li>
                    <li class="breadcrumb-item"><a href="#">管理员端</a></li>
                    <li class="breadcrumb-item"><a href="#">课程</a></li>
                    <li class="breadcrumb-item active" aria-current="page">添加课程</li>
                </ol>
            </nav>
            <div class="row">
                <div id="form" class="col-lg-12 mx-auto">
                    <h3 class="mb-3">添加一个课程信息</h3>
                    <hr>
                    <form class="needs-validation" novalidate>
                        <div class="row">
                            <div class="col-md-12 mb-3">
                                <label for="courseName">课程名称</label>
                                <input type="text" class="form-control" id="courseName" placeholder="输入课程的名称" value="" required>
                            </div>
                        </div>
                        <div class="row mb-3">

                            <div class="col-md-2">
                                <label >文/理类型</label>
                                <div class="btn-group">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                        <label class="form-check-label" for="inlineRadio1">文科</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                        <label class="form-check-label" for="inlineRadio2">理科</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-3">
                                <label for="grade">学部</label>
                                <select class="custom-select d-block w-100" id="grade" required>
                                    <option value="">选择...</option>
                                    <option value="高中">高中</option>
                                    <option value="初中">初中</option>
                                </select>
                            </div>
                            <div class="col-md-3 ">
                                <label for="year">年级</label>
                                <select class="custom-select d-block w-100" id="year" required>
                                    <option value="">选择.....</option>
                                    <option value="一年级">一年级</option>
                                    <option value="二年级">二年级</option>
                                    <option value="三年级">三年级</option>
                                    <option value="全部">全部</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="courseTime">上课时间</label>
                                <input type="text" class="form-control" id="courseTime" placeholder="如：每周一、三、五上午9:00-11:30" required="">
                            </div>
                        </div>


                        <label>任课教师</label>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <label class="input-group-text" for="teacher"><i class="fa fa-user"></i></label>
                            </div>
                            <select class="custom-select" id="teacher">
                                <option selected value="">选择...</option>
                            <c:forEach items="${teacherList}" var="teacher" varStatus="i"  >
                                <option value="${teacher.id}">${teacher.teacherName}</option>
                            </c:forEach>
                            </select>
                        </div>
                    </form>
                    <button class="btn btn-outline-primary btn-block mt-4" type="button" onclick="submit()">添加</button>
                </div>
            </div>


        </div>
    </div>
</main>
<%@include file="../../common/footer.jsp" %>
<script src="../../../../libs/jQuery-3.4.1.min.js"></script>
<script src="../../../../libs/bootstrap-table/dist/bootstrap-table.min.js"></script>
<script src="../../../../libs/bootstrap-4.3.1-dist/js/bootstrap.bundle.min.js"></script>
<script src="../../../../libs/editor.md-master/editormd.js"></script>
<script src="../../../../libs/bootstrap-fileinput-master/js/fileinput.min.js"></script>
<script src="../../../../libs/bootstrap-fileinput-master/js/locales/zh.js"></script>
<script src="../../../../libs/bootstrap-fileinput-master/themes/explorer/theme.min.js"></script>
<script src="../../../../libs/popper.min.js"></script>
<script src="../../../../js/common/app-js.js"></script>

<script>
    function submit() {
        var courseName = $("#courseName").val();
        var courseTime = $("#courseTime").val();
        var isliberalArts= $("#inlineRadio1").is(':checked');
        var type;
        if(isliberalArts) {
            type = "文科";
        }else{
            type = "理科";
        }
        var grade = $("#grade").val();
        var year = $("#year").val();
        var teacher = $("#teacher").val();

        var data = {
            courseName:courseName,
            courseTime:courseTime,
            type:type,
            grade:grade,
            year:year,
            teacherId:teacher
        };

        $.ajax({
            type: "post",
            url:"/course/course",
            data: data,
            success: function(result) {
                if (result.code == 0) {
                    alert("添加成功");
                } else {
                    alert("添加失败，请联系管理员");
                }
            }
        });

    }
</script>
</body>
</html>
