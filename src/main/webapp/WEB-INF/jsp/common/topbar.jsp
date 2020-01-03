<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2019-12-24
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="blog-header py-3">
    <div class="row flex-nowrap justify-content-between align-items-center">
        <div class="col-4 pt-1">
            <a class="text-muted" href="#">eLearingMooc</a>
        </div>
        <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="#">e学慕课</a>
        </div>
        <div class="col-4 d-flex justify-content-end align-items-center">
            <a class="btn btn-sm btn-outline-primary" href="#" data-toggle="modal" data-target="#loginModal"><i class="fa fa-sign-in mr-2"></i>立即登录</a>
        </div>
    </div>
</header>
<!-- Modal -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="loginModalTitle">登录<small style="font-size: 1rem">没有账号？<a href="#" class="text-decoration-none">立即注册</a></small></h3>

                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="/login" method="post">
                    <div class="form-group">
                        <label for="username" class="col-form-label">账号:</label>
                        <input type="text" class="form-control" name="username" id="username">
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-form-label">密码:</label>
                        <input type="password" name="password" class="form-control" id="password">
                    </div>
                    <div class="row justify-content-between" style="margin: 0 10px">

                        <div class="btn-group">
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                <label class="form-check-label" for="inlineRadio1">学生</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                <label class="form-check-label" for="inlineRadio2">管理员</label>
                            </div>
                        </div>
                        <div>
                            <div class="form-group">
                                <div class="form-check">
                                    <input class="form-check-input"  name="remeberMe" type="checkbox" id="remeberMe">
                                    <label class="form-check-label" for="remeberMe">
                                        记住我
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-link" data-dismiss="modal">稍后</button>
                <button class="btn btn-outline-primary w-25" type="button" onclick="loginValidate()">现在登录</button>
            </div>
        </div>
    </div>
</div>