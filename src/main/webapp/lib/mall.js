window.addEventListener('load', function () {
    var pSum = 0
    var countMap = new Map()

    function getpSum() {
        var sum = 0
        countMap.forEach(function (key, value) {
            sum += key
        })
        return sum
    }
    // 默认购物车样式
    $(".pay-box").hide()
    function defaultShopCart() {
        $(".checkBtn").hide()
        $(".shopList").hide(600)
        countMap.clear()
        $(".list").empty()
        $(".list").append("<li class='listStrong'><span>商品名</span><span>价格</span><span>数量</span></li>")
        $(".shopCart").text(" 当前购物车为空")
        $(".shopCart").prepend("<i class='fas fa-gift'></i>")
    }
    // 更新购物车函数
    function updateShopCart() {
        pSum = getpSum()
        // console.log(countMap)
        $(".shopCart").text(" 已添加 " + pSum + " 件商品")
        $(".shopCart").prepend("<i class='fas fa-gift'></i>")
    }
    // 添加一个商品
    function addOne(description) {
        var count = countMap.get(description)
        countMap.set(description, ++count)
        $('#' + description).find("span").eq(2).text(count.toString(10))
    }
    // 减少一个商品
    function minusOne(description) {
        var count = countMap.get(description)
        countMap.set(description, --count)
        $('#' + description).find("span").eq(2).text(count.toString(10))
    }
    // 结算按钮动画
    var checkBtnActiveFlag = false
    $(".checkBtn").click(function () {
        if (checkBtnActiveFlag == false) {
            var sum = 0
            checkBtnActiveFlag = true
            // 遍历购物车
            countMap.forEach(function (key, value) {
                // 获得价格
                sum += parseInt($('#' + value).find("span").eq(1).text().substring(1)) * key
            })
            // $(".list").append("<li class='listStrong' id='checkOut'><span>总价</span><span>" + sum
            //     + "</span><span>去支付</span><div class='listBtn' style='visibility: hidden;'></div class='listBtn'><div></div></li>")
            $(".undoPay").prepend("<div class='sumPrice'>共计 " + sum + " 元</div>")
            $(".pay-box").show(600)
            $(this).html("<i class='fas fa-check'></i>")
            $(this).css("background-color", "#34495e");
            $(this).hover(function () { $(this).css("background-color", "#1abc9c"); })
        }
        else {
            checkBtnActiveFlag = false
            defaultShopCart()
            $(this).html("结算")
            $(".pay-box").hide(600)
            $(".sumPrice").remove()
            $(this).css("background-color", "#1abc9c");
            $(this).hover(function () { $(this).css("background-color", "#34495e"); })
            // $("#checkOut").remove()
        }
    });

    // 购物车按钮动画
    var shopCartActiveFlag = false
    $(".shopCart").click(function () {
        if (shopCartActiveFlag == false) {
            shopCartActiveFlag = true
            $(this).addClass("cart-active")
            $(".shopList").toggle(500)
        }
        else {
            shopCartActiveFlag = false
            $(this).removeClass("cart-active")
            $(".shopList").toggle(500)
        }
    });

    $(".undoPay").click(function () {
        $(".shopList").show(600)
        $(".pay-box").hide(600)
    });
    // 如果1件商品都没有
    if (pSum == 0) {
        defaultShopCart()
    }
    // 卡片下的添加商品按钮
    $(".plus").click(function () {
        $(".checkBtn").show()
        $(".shopList").show(600)
        var description = $(this).siblings(".card-description").text()
        var price = $(this).siblings(".card-price").text()
        // 如果购物车中没有该商品，插入新行
        if (!countMap.has(description)) {
            countMap.set(description, 1)
            $(".list").append("<li id='" + description + "'><span>" + description + "</span><span>" + price + "</span><span>" + 1
                + "</span><div class='plus listBtn'><i class='fas fa-plus'></i></div>"
                + "<div class='minus listBtn'><i class='fas fa-minus'></i></div></li>")
        }
        // 如果购物车已经有了，只修改数量
        else {
            addOne(description)
        }
        updateShopCart()
    });
    // 有按钮必然有数量，只修改数量
    // append的元素添加点击事件只能用on
    // 点到div标签
    $(".list").on('click', ".plus.listBtn", function () {
        var description = $(event.target).parent().attr("id")
        if (typeof (description) != "undefined") {
            addOne(description)
            updateShopCart()
        }
    });
    // 点到i标签
    $(".list").on('click', ".fas.fa-plus", function () {
        var description = $(event.target).parent().parent().attr("id")
        addOne(description)
        updateShopCart()
    });
    // 卡片下的减少商品按钮
    $(".minus").click(function () {
        var description = $(this).siblings(".card-description").text()
        var count = countMap.get(description)
        // 购物车有的商品才能减少
        if (countMap.has(description)) {
            if (count > 1) {
                minusOne(description)
            }
            else if (count == 1) {
                countMap.delete(description)
                $('#' + description).remove()
            }
            pSum = getpSum()

            if (pSum == 0) {
                defaultShopCart()
            }
            else {
                updateShopCart()
            }
        }
    });
    // 有按钮必然有数量，只修改数量
    $(".list").on('click', ".minus.listBtn", function () {

        var description = $(event.target).parent().attr("id")
        var count = countMap.get(description)

        if (count > 1) {
            minusOne(description)
        }
        else if (count == 1) {
            countMap.delete(description)
            $('#' + description).remove()
        }
        pSum = getpSum()
        if (pSum == 0) {
            defaultShopCart()
        }
        else {
            updateShopCart()
        }

    });
    // 点到i标签
    $(".list").on('click', ".fas.fa-minus", function () {

        var description = $(event.target).parent().parent().attr("id")
        var count = countMap.get(description)
        if (count > 1) {
            minusOne(description)
        }
        else if (count == 1) {
            countMap.delete(description)
            $('#' + description).remove()
        }
        pSum = getpSum()
        if (pSum == 0) {
            defaultShopCart()
        }
        else {
            updateShopCart()
        }
    });
    //
});