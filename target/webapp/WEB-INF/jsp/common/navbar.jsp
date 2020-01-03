<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2019-12-24
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="nav-scroller py-1 mb-2">
    <nav class="nav d-flex justify-content-between">
        <a class="p-2 text-muted" href="#">学校简介</a>
        <a class="p-2 text-muted" href="#">名师介绍</a>
        <a class="p-2 text-muted" href="#">课程体系</a>
        <%--<a class="p-2 text-muted" href="#">中高考资讯</a>--%>
        <%
            String consultationMain = request.getParameter("consultationMain");
            if (consultationMain != null){
                if(consultationMain.equals("20191230")){
        %>
        <a class="p-2 text-primary" href="consultation/main">中高考资讯</a>
        <%}
        else
        {
        %>
        <a class="p-2 text-muted" href="consultation/main">中高考资讯</a>
        <%
            }}
        else
        {
        %>
        <a class="p-2 text-muted" href="consultation/main">中高考资讯</a>
        <%
            }
        %>
        <a class="p-2 text-muted" href="#">课程报名</a>
        <a class="p-2 text-muted" href="/enroll/main">网上课堂</a>
    </nav>
</div>