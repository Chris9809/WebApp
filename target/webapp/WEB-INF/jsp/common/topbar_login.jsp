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
            <a class="text-muted" href="#">Subscribe</a>
        </div>
        <div class="col-4 text-center">
<%--            <%--%>
<%--                User curUser = (User) session.getAttribute("curUser");--%>
<%--                if("admin".equals(curUser.getRole())){--%>
<%--            %>--%>
<%--            <a class="blog-header-logo text-dark" href="#">e学慕课<span class="badge badge-secondary badge-pill">Admin</span></a>--%>

<%--            <%}--%>
<%--            else--%>
<%--            {--%>
<%--            %>--%>
            <a class="blog-header-logo text-dark" href="#">e学慕课</a>
<%--            <%--%>
<%--                }--%>
<%--            %>--%>
        </div>
        <div class="col-4 d-flex justify-content-end align-items-center">
            <li class="nav-item dropdown text-center" style="list-style: none;">
                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" style="max-height: 50px" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">${curUser.username}</span>
                </a>
                <!-- Dropdown - User Information -->
                <div class="dropdown-menu dropdown-menu-right shadow" aria-labelledby="userDropdown">
                    <a class="dropdown-item" href="#">
                        <i class="fa fa-user mr-2 text-gray-400"></i>
                        个人中心
                    </a>
                    <a class="dropdown-item" href="#">
                        <i class="fa fa-cogs mr-2 text-gray-400"></i>
                        设置
                    </a>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item"  data-toggle="modal" data-target="#logoutModal"   >
                        <i class="fa fa-sign-out fa-sm fa-fw mr-2 text-gray-400"></i>
                        退出登录
                    </a>
                </div>
            </li>

        </div>
    </div>
    <%--登出提醒模态框--%>
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="modal-title" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">退出登录?</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>退出之后，您的登录状态将不会被保存。</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">稍后</button>
                    <a  href="/logout" class="btn btn-primary">立即退出</a>
                </div>
            </div>
        </div>
    </div>
</header>