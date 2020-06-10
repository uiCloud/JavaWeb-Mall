<%--
  Created by IntelliJ IDEA.
  User: 邱炳蔚
  Date: 2019/12/7
  Time: 19:54
  登录失败时显示的界面
--%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=basePath%>/lib/bootstrap.min.css"/>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        h2 {
            position: absolute;
            top: 30%;
        }

        .color-button {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 200px;
            height: 60px;
            text-align: center;
            text-transform: uppercase;
            text-decoration: none;
            line-height: 60px;
            letter-spacing: 4px;
            color: #fff;
            font-size: 24px;
            font-family: sans-serif;
            box-sizing: border-box;
            background: linear-gradient(90deg, #03a9f4, #f441a5, #ffeb3b, #03a9f4);
            background-size: 400%;
            border-radius: 30px;
            z-index: 3;
        }

        .color-button:hover {
            animation: color-animate 8s linear infinite;
        }

        @keyframes color-animate {
            0% {
                background-position: 0%;
            }

            100% {
                background-position: 400%;
            }
        }

        .color-button::before {
            content: '';
            position: absolute;
            top: -5px;
            left: -5px;
            right: -5px;
            bottom: -5px;
            z-index: -1;
            background: linear-gradient(90deg, #03a9f4, #f441a5, #ffeb3b, #03a9f4);
            background-size: 400%;
            border-radius: 40px;
            filter: blur(20px);
            opacity: 0;
            transition: .5s;
        }

        .color-button:hover::before {
            filter: blur(20px);
            opacity: 1;
            animation: color-animate 8s linear infinite;
        }
    </style>
</head>
<body>

<br/>
<br/>
<br/>
<h2>${message}</h2>
<br/>

<a href="<%=basePath%>/user/index.do" class="color-button" style="text-decoration: none; color: white">
    返回登录
</a>

</body>
</html>
