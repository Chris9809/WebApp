<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2020-01-02
  Time: 09:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../../../../libs/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">
<div class="accordion mt-3" id="accordionExample">
    <div >
        <div class="nav-item"  id="headingOne">
            <h2 class="mb-0">
                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                    <i class="mr-5 fa fa-university">&nbsp;&nbsp;学校</i>
                </button>
            </h2>
        </div>

        <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
            <div class="card-body">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"><a href="#"><i class="mr-3 fa fa-list"></i>全部</a></li>
                    <li class="list-group-item"><a href="#"><i class="mr-3 fa fa-plus"></i>增加</a></li>增加</li>
                </ul>
            </div>
        </div>
    </div>
    <div >
        <div class="nav-item" id="headingTwo">
            <h2 class="mb-0">
                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    <i class="mr-5 fa fa-book">&nbsp;&nbsp;课程</i>
                </button>
            </h2>
        </div>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
            <div class="card-body">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"><a href="#"><i class="mr-3 fa fa-list"></i>全部</a></li>
                    <li class="list-group-item"><a href="#"><i class="mr-3 fa fa-plus"></i>增加</a></li>增加</li>
                </ul>
            </div>
        </div>
    </div>
    <div >
        <div class="nav-item"  id="headingThree">
            <h2 class="mb-0">
                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    <i class="mr-5 fa fa-check">&nbsp;&nbsp;报名</i>
                </button>
            </h2>
        </div>

            <%
            String s = request.getParameter("path");
            if("course".equals(s)){
            %>
            <div id="collapseThree" class="collapse show" aria-labelledby="headingThree" data-parent="#accordionExample">
            <%}
            else
            {
            %>
            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
            <%
            }
            %>
            <div class="card-body">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"><a href="#"><i class="mr-3 fa fa-list"></i>全部</a></li>
                    <li class="list-group-item"><a href="/admin/course/add"><i class="mr-3 fa fa-plus"></i>增加</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>