<%--
  Created by IntelliJ IDEA.
  User: 邱炳蔚
  Date: 2019/12/7
  Time: 19:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8"
         language="java"
         import="java.util.Date"
%>
<%
    Date date = new Date();
    String pageTime = date.toString();
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<html>
<link rel="stylesheet" href="<%=basePath%>/lib/bootstrap.min.css"/>
<head>
    <title>Title</title>
</head>
<body>
<!-- 导航栏 -->
<div class="sidebar text-left">
    <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand">软工1814班</a>
            </div>
            <div>
                <ul class="nav navbar-nav">
                    <li><a href="<%=basePath%>/customer/toSavePage.do"><strong>添加信息功能</strong></a></li>
                    <li><a href="<%=basePath%>/customer/toListPage.do"><strong>分页查询功能</strong></a></li>
                    <li><a><%=pageTime%>
                </ul>
            </div>
        </div>
    </nav>
</div>
</body>
</html>
