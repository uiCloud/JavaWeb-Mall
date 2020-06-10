window.addEventListener('load', function () {
    $('.login-box').animate({ left: '27.0%', width: '51%', height: '61%' }, 700)
    // width变窄只会在右边缩，所以要右移，营造左右两边缩小的假象
        .animate({ left: '27.5%', width: '50%', height: '60%' }, 250)

    $("#img1").on("click", function () {
        for (var i = 0; i < 2; i++) {
            $('.login-box').append("<style>.login-box::after{background: rgba(255, 0, 0, .1);}</style>")
            $('.login-box').animate({ left: '27.2%' }, 90)
            $('.login-box').animate({ left: '27.8%' }, 90)
        }
        setTimeout(() => {
            $('.login-box').append("<style>.login-box::after{background: rgba(194, 194, 194, 0.1);}</style>")
    }, 400);
    })

    const inputs = document.querySelectorAll(".input");

    function focusFunction() {
        let parentNode = this.parentNode.parentNode
        parentNode.classList.add('focus');
    }
    function blurFunction() {
        let parentNode = this.parentNode.parentNode;
        if (this.value == '') {
            parentNode.classList.remove('focus');
        }
    }

    inputs.forEach(input => {
        input.addEventListener('focus', focusFunction);
    input.addEventListener('blur', blurFunction);
})
})