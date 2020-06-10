<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <link rel="stylesheet" href="../lib/style.css">
    <link rel="stylesheet" href="../lib/mall.css">
    <script src="../lib/mall.js"></script>
    <script src="../lib/jquery-3.3.1.min.js"></script>
    <title>🛒你🐎呢</title>
</head>

<body>


<div class="nav-bar">
    <a class="shopCart"></a>
    <a href=""><i class="fas fa-check-circle"></i> 欢迎你</a>
    <a href="<%=basePath%>/user/index.do"><i class="fas fa-child"></i> 登录</a>
    <a href="<%=basePath%>/user/register.do"><i class="fas fa-user-plus"></i> 注册</a>
    <div class="animation start-home"></div>
</div>

<div class="shopList">
    <ul class="list">
        <!-- 购物车插入 -->
    </ul>
    <div class="checkBtn">结算</div>
</div>

<div class="card-section">
    <h1>让开发者开心的礼物，开了又开</h1>
    <h4>The gift makes developers happy, open after opening</h4>
    <div class="card-list">
        <div class="card">
            <img class="product-img" src="../img/product/1.png" />
            <div class="card-price">¥ 8699</div>
            <div class="card-description">小米11&nbsp;Pro</div>
            <div class="card-option plus"><i class="fas fa-shopping-cart"></i></div>
            <div class="card-option minus"><i class="fa fa-trash"></i></div>
        </div>
        <div class="card">
            <img class="product-img" src="../img/product/2.png" />
            <div class="card-price">¥ 5899</div>
            <div class="card-description">小米11</div>
            <div class="card-option plus"><i class="fas fa-shopping-cart"></i></div>
            <div class="card-option minus"><i class="fa fa-trash"></i></div>
        </div>
        <div class="card">
            <img class="product-img" src="../img/product/3.png" />
            <div class="card-price">¥ 4399</div>
            <div class="card-description">小米XR</div>
            <div class="card-option plus"><i class="fas fa-shopping-cart"></i></div>
            <div class="card-option minus"><i class="fa fa-trash"></i></div>
        </div>
        <div class="card">
            <img class="product-img" src="../img/product/4.png" />
            <div class="card-price">¥ 2799</div>
            <div class="card-description">小红SE&nbsp;2</div>
            <div class="card-option plus"><i class="fas fa-shopping-cart"></i></div>
            <div class="card-option minus"><i class="fa fa-trash"></i></div>
        </div>
        <div class="card">
            <img class="product-img" src="../img/product/5.png" />
            <div class="card-price">¥ 5999</div>
            <div class="card-description">压泡面专用板&nbsp;Pro</div>
            <div class="card-option plus"><i class="fas fa-shopping-cart"></i></div>
            <div class="card-option minus"><i class="fa fa-trash"></i></div>
        </div>
    </div>
</div>

<div class="card-section">
    <h1>更多商品，多多益善</h1>
    <h4>More goods, more goods</h4>
    <div class="card-list">
        <div class="card">
            <img class="product-img" src="../img/product/6.png" />
            <div class="card-price">¥ 15999</div>
            <div class="card-description">MiBook&nbsp;Pro</div>
            <div class="card-option plus"><i class="fas fa-shopping-cart"></i></div>
            <div class="card-option minus"><i class="fa fa-trash"></i></div>
        </div>
        <div class="card">
            <img class="product-img" src="../img/product/7.png" />
            <div class="card-price">¥ 2999</div>
            <div class="card-description">Opple&nbsp;Watch</div>
            <div class="card-option plus"><i class="fas fa-shopping-cart"></i></div>
            <div class="card-option minus"><i class="fa fa-trash"></i></div>
        </div>
        <div class="card">
            <img class="product-img" src="../img/product/8.png" />
            <div class="card-price">¥ 9999</div>
            <div class="card-description">荣曜增智慧本&nbsp;13inch</div>
            <div class="card-option plus"><i class="fas fa-shopping-cart"></i></div>
            <div class="card-option minus"><i class="fa fa-trash"></i></div>
        </div>
        <div class="card">
            <img class="product-img" src="../img/product/9.png" />
            <div class="card-price">¥ 45999</div>
            <div class="card-description">铝合金刮丝器&nbsp;Pro</div>
            <div class="card-option plus"><i class="fas fa-shopping-cart"></i></div>
            <div class="card-option minus"><i class="fa fa-trash"></i></div>
        </div>
        <div class="card">
            <img class="product-img" src="../img/product/10.png" />
            <div class="card-price">¥ 25999</div>
            <div class="card-description">坚果TNT&nbsp;Pro</div>
            <div class="card-option plus"><i class="fas fa-shopping-cart"></i></div>
            <div class="card-option minus"><i class="fa fa-trash"></i></div>
        </div>
    </div>
</div>

<div class="toTop">
    <a href="javascript:window.scrollTo(0,0)">
        <i class="fas fa-arrow-up"></i>
    </a>
</div>

<div class="pay-box">
    <div><img src="../img/pay.png" alt=""></div>
    <div class="undoPay"><i class='fas fa-arrow-left'></i></div>
</div>


</body>

</html>