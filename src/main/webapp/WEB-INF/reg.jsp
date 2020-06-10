<%--
  Created by IntelliJ IDEA.
  User: 邱炳蔚
  Date: 2019/12/7
  Time: 19:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../lib/font-awesome.min.css" rel="stylesheet">
    <link href="../lib/style.css" rel="stylesheet">
    <script src="../lib/script.js"></script>
    <script src="../lib/jquery-3.3.1.min.js"></script>
    <title>首页</title>
    <html>

<body>
<div class="main">
    <img src="../img/register.jpg" class="avatar" id="img1">
    <div class="login-box">
        <form action="<%=basePath%>/user/create.do" method="post">
            <!-- <h1>欢 迎 登 陆</h1> -->
            <div class="input-text">
                <div class="icon">
                    <i class="fa fa-user fa-2x"></i>
                </div>
                <div>
                    <h5>Username</h5>
                    <input type="text" class="input" name="username">
                </div>
            </div>
            <div class="input-text">
                <div class="icon">
                    <i class="fa fa-lock fa-2x"></i>
                </div>
                <div>
                    <h5>Password</h5>
                    <input type="password" class="input" name="password">
                </div>
            </div>
            <a href="<%=basePath%>/user/index.do">Having account?</a>
            <input type="submit" class="btn" value="Register">
        </form>
    </div>
</div>

</body>

</html>