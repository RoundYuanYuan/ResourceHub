
//新闻列表展示
{
     let max = $(".news-title").offset().top;
    let flag = true;
    $(window).scroll(function () {
        if ($(this).scrollTop() > max) {
            if (flag) {
                flag = false;
                $(".news-clip").animate({top: -15});
                $(".news-list").each(function (index) {
                    $(this).delay((index + 1) * 300).animate({top: 0});
                })
            }
        }
        if ($(this).scrollTop() < max - $(window).height()) {
            flag = true;
            $(".news-clip").css({top: 1000});
            $(".news-list").css({top: 1000});
        }
    })
}
 