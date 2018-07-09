//var domain = document.domain.toLowerCase();
//if (domain.indexOf("ziyuanku.com") == -1 && domain.indexOf("www.ziyuanku.com") == -1) {
//    var url = document.URL.toLowerCase();   
//    var goUrl = url.replace("http://" + domain, "http://www.ziyuanku.com");
//    location.href = goUrl;
//}
function IsMobile() {
    var userAgentInfo = navigator.userAgent;
    var Agents = ["Android", "iPhone",
				"SymbianOS", "Windows Phone",
				"iPad", "iPod"];
    var flag = false;
    for (var v = 0; v < Agents.length; v++) {
        if (userAgentInfo.indexOf(Agents[v]) > 0) {
            flag = true;
            break;
        }
    }
    return flag;
}
var ZYK = {};
//学校当天最大下载量
ZYK.schoolMaxDown = 500;
//个人用户当天最大下载量
ZYK.userMaxDown = 20;
//个人用户(实名登记)当日最大下载量
ZYK.userRealNameMaxDown = 40;
//个人用户当日精品最大下载量
ZYK.userBoutiqueMaxDown = 5;
//个人用户当日收费资料最大下载量
ZYK.userCollectFeesMaxDown = 20;
//个人用户当日免费资料最大下载量
ZYK.userFreeMaxDown = 20;
$(document).ready(function () {
    $(".nav li").hover(function () {
        $(this).css({ background: "#d11d34" });
        $(this).find("b").css({ background: "#d11d34" });
        $(this).next().find("b").css({ background: "#e4393c" });
    }, function () {
        $(this).css({ background: "#e4393c" });
        $(this).find("b").css({ background: "#e7585a" });
        $(this).next().find("b").css({ background: "#e7585a" });
    });
    $("#txtKeyWords").keydown(function (e) {
        if (e.keyCode == 13) {
            $("#btnSearch").click();
        }
    });
    $("#btnSearch").click(function () {
        var keyWords = $("#txtKeyWords");
        var typeId = $(".select_option").find("li.selected").attr("data-typeId");
        if ($.trim(keyWords.val()) == "") {
            layer.tips('请输入关键词!', '#txtKeyWords', {
                tips: [1, '#e4393c']
            });
        }
        else {
            window.open("/search/?t=" + typeId + "&key=" + keyWords.val());
        }
    });
    $(".select_showbox").click(function () {
        $(".select_option").show();
    });
    $(".select_option li").click(function () {
        $(".select_option").hide();
        var typeText = $(this).text();
        var typeId = $(this).attr("data-typeId");
        $("#curType").text(typeText);
        $(".select_option").find("li").each(function () {
            $(this).removeClass();
        });
        $(this).attr("class", "selected");

    });
    $("#aLogin").click(function () {
        LoginBox();
    });
    $("#aRegister").click(function () {
        RegisterBox();
    });
    $(".lay_logreg input").focus(function () {
        $(this).removeClass("error");
    }).blur(function () {
        if ($.trim($(this).val()) == "") {
            $(this).addClass("error");
        }
    });
    $(".back_top li:first").hover(function () {
        $(".qr-code-container").show();
    }, function () {
        $(".qr-code-container").hide();
    });
    $('.back_top li:last').click(function () {
        $('html,body').animate({ scrollTop: '0px' }, 300);
    });
    $(".map .li_last").click(function () {
        if ($(".pb-qbkc-all").is(":hidden")) {
            $(".pb-qbkc-all").show();
            $(".li_last").addClass("active");
        }
        else {
            $(".pb-qbkc-all").hide();
            $(".li_last").removeClass("active");
        }
    });
    $(".back_star").click(function () {
        var url = "http://www.ziyuanku.com/";
        var title = "中华资源库";
        try {
            window.external.addFavorite(url, title);
        }
        catch (e) {
            try {
                window.sidebar.addPanel(title, url, "");
            }
            catch (e) {
                alert("抱歉，您所使用的浏览器无法完成此操作。\n\n加入收藏失败，请使用Ctrl+D进行添加");
            }
        }
    });
    $(".feed_back").click(function () {
        layer.open({
            type: 2,
            skin: 'layui-layer-rim', /*加上边框*/
            shadeClose: true,
            /*closeBtn: false,//不显示关闭按钮*/
            shade: 0.3,/*遮罩层透明度*/
            title: false, /*不显示标题*/
            area: ['410px', '375px'],
            fix: false, /*不固定*/
            maxmin: false,/*最大化最小化按钮*/
            content: ['/Dialog/feedback.html', 'no']
        });
    });
    $(window).scroll(function () {
        var top = $(document).scrollTop();
        if (top > 200) {
            $("#goTop").show();
        }
        else {
            $("#goTop").hide();
        }
    });
    //学科频道的其他 hover效果  小学科显示和隐藏
    $(".other_more>a").hover(function () {
        $(this).parent().find(".other_content").show();
    }, function () {
        $(this).parent().find(".other_content").hover(function () {
            $(this).show();
        }, function () {
            $(this).hide();
        });
        $(this).parent().find(".other_content").hide();
    });
    //套题、备课配套资源
    $(".subsidiary_tit").hover(function () {
        $(".subsidiary_list").show();
    }, function () {
        $(".subsidiary_list").hover(function () {
            $(this).show();
        }, function () {
            $(this).hide();
        });
        $(".subsidiary_list").hide();
    });
});
//导航选中
function hoverChange(current) {
    $("#Nav" + current + "").css({ background: "#d11d34" });
    $("#Nav" + current + " b").css({ background: "#d11d34" });
    $("#Nav" + current + "").next().find("b").css({ background: "#e4393c" });
    $("#Nav" + current + "").unbind('mouseenter mouseleave');
    $("#Nav" + (current - 1) + "").hover(function () {
        $(this).css({ background: "#d11d34" });
        $(this).find("b").css({ background: "#d11d34" });
        $(this).next().find("b").css({ background: "#d11d34" });
    }, function () {
        $(this).css({ background: "#e4393c" });
        $(this).find("b").css({ background: "#e7585a" });
        $(this).next().find("b").css({ background: "#d11d34" });
    });
    $("#Nav" + (current + 1) + "").hover(function () {
        $(this).css({ background: "#d11d34" });
        $(this).find("b").css({ background: "#d11d34" });
        $(this).next().find("b").css({ background: "#e4393c" });
    }, function () {
        $(this).css({ background: "#e4393c" });
        $(this).find("b").css({ background: "#e4393c" });
        $(this).next().find("b").css({ background: "#e7585a" });
    });
    //click时清除hover的样式
    $(".nav li").each(function (i, item) {
        $(this).click(function () {
            if (i != current) {
                $(this).css({ background: "#e4393c" });
                if (i != (current + 1))
                    $(this).find("b").css({ background: "#e7585a" });
                else
                    $(this).find("b").css({ background: "#e4393c" });
                if (i != (current - 1))
                    $(this).next().find("b").css({ background: "#e7585a" });
                else
                    $(this).next().find("b").css({ background: "#d11d34" });
            }
        });
    });
}

function LoginBox() {
    layer.open({
        type: 2,
        skin: 'layui-layer-rim', /*加上边框*/
        shadeClose: true,
        /*closeBtn: false,//不显示关闭按钮*/
        shade: 0.3,/*遮罩层透明度*/
        title: false, /*不显示标题*/
        area: ['425px', '390px'],
        fix: false, /*不固定*/
        maxmin: false,/*最大化最小化按钮*/
        content: ['/Dialog/login.html', 'no']
    });
}
function RegisterBox() {
    layer.open({
        type: 2,
        skin: 'layui-layer-rim',  /*加上边框*/
        shadeClose: true,
        /* closeBtn: false,//不显示关闭按钮*/
        shade: 0.3,/*遮罩层透明度*/
        title: false, /*不显示标题*/
        area: ['430px', '450px'],
        fix: false,/*不固定*/
        maxmin: false,/*最大化最小化按钮*/
        content: ['/Dialog/register.html', 'no']
    });
}
function PhoneBindBox() {
    layer.open({
        type: 2,
        skin: 'layui-layer-rim',  /*加上边框*/
        shadeClose: true,
        /* closeBtn: false,//不显示关闭按钮*/
        shade: 0.3,/*遮罩层透明度*/
        title: false, /*不显示标题*/
        area: ['430px', '450px'],
        fix: false,/*不固定*/
        maxmin: false,/*最大化最小化按钮*/
        content: ['/Dialog/PhoneBind.html', 'no']
    });
}
///wraper-父容器
///prev-左按钮
///next-右按钮
///img-内容器
///speed-运动速度
///or-是否自动播放(默认为false)
//调用实例 scroll('#schools_box', '#BtnLeft', '#BtnRight', '#schools', 3, true);
function scroll(wraper, prev, next, img, speed, or) {
    var wraper = $(wraper);
    var prev = $(prev);
    var next = $(next);
    var img = $(img).find('ul');
    var w = img.find('li').outerWidth(true);
    var s = speed;
    next.click(function () {
        img.animate({ 'margin-left': -w }, function () {
            img.find('li').eq(0).appendTo(img);
            img.css({ 'margin-left': 0 });
        });
    });
    prev.click(function () {
        img.find('li:last').prependTo(img);
        img.css({ 'margin-left': -w });
        img.animate({ 'margin-left': 0 });
    });
    if (or == true) {
        ad = setInterval(function () { next.click(); }, s * 1000);
        wraper.hover(function () { clearInterval(ad); }, function () { ad = setInterval(function () { next.click(); }, s * 1000); });
    }
}
function GetLoginType() {
    var TypeName = "";
    var sUserAgent = navigator.userAgent.toLowerCase();
    var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
    var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
    var bIsMidp = sUserAgent.match(/midp/i) == "midp";
    var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
    var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
    var bIsAndroid = sUserAgent.match(/android/i) == "android";
    var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
    var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
    //var regStr_ie = /msie [\d.]+;/gi;
    //var regStr_ff = /firefox\/[\d.]+/gi
    //var regStr_chrome = /chrome\/[\d.]+/gi;
    //var regStr_saf = /safari\/[\d.]+/gi;
    if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
        if (bIsIpad)
            TypeName = "ipad端登录";
        else if (bIsIphoneOs)
            TypeName = "iphone端登录";
        else if (bIsWM)
            TypeName = "windows phone端登录";
        else if (bIsAndroid)
            TypeName = "android端登录";
        else
            TypeName = "手机端登录";
    } else {
        if (sUserAgent.indexOf("compatible") > -1 && sUserAgent.indexOf("msie") > -1 && !sUserAgent.indexOf("Opera") > -1)//测 可用
            TypeName = "PC登录(IE浏览器)";
        else if (sUserAgent.indexOf("firefox") > 0)// 测 可用
            TypeName = "PC登录(火狐浏览器)";
        else if (sUserAgent.indexOf("360se") > 0 || (window.navigator.mimeTypes[40] || !window.navigator.mimeTypes.length))
            TypeName = "PC登录(360浏览器)";
        else if (sUserAgent.indexOf("chrome") > 0)// 测 可用
            TypeName = "PC登录(谷歌浏览器)";
        else if (sUserAgent.indexOf("Opera") > 0)
            TypeName = "PC登录(欧朋浏览器)";
        else if (sUserAgent.indexOf("safari") > 0 && agent.indexOf("chrome") < 0)
            TypeName = "PC登录(safari浏览器)";
        else
            TypeName = "PC登录";
    }
    return TypeName;
}
//用户登录
ZYK.Login = function (userName, userPass, validateCode) {
    var json = null;
    var loginType = GetLoginType();
    $.ajax({
        type: "post",
        url: "/plus/Login.ashx",
        data: { action: "login", userName: userName, userPass: userPass, validateCode: validateCode, loginType: escape(loginType) },
        dataType: "json",
        async: false,
        success: function (data) {
            json = data;
        }
        , error: function (error) {
            layer.msg("系统错误" + error.ErrorString);
        }
    });
    return json;
}

//帐号绑定
ZYK.AccountBindLogin = function (userName, userPass, nickName) {
    var json = null;
    $.ajax({
        type: "post",
        url: "/plus/Login.ashx",
        data: { action: "accountBind", userName: userName, userPass: userPass, nickName: nickName },
        dataType: "json",
        async: false,
        success: function (data) {
            json = data;
        }
        , error: function (error) {
            layer.msg("系统错误" + error.ErrorString);
        }
    });
    return json;
}
//用户注册
ZYK.Register = function (userPass, userName, validateCode) {
    var json = null;
    $.ajax({
        type: "post",
        url: "/plus/Register.ashx",
        data: { userPass: userPass, userName: userName, validateCode: validateCode },
        dataType: "json",
        async: false,
        success: function (data) {
            json = data;
        }
        , error: function (error) {
            layer.msg("系统错误" + error.ErrorString);
        }
    });
    return json;
}
//帐号绑定
ZYK.AccountBindRegister = function (userPass, userEmail, nickName) {
    var json = null;
    $.ajax({
        type: "post",
        url: "/plus/Register.ashx",
        data: { action: "accountBind", userPass: userPass, userEmail: userEmail, nickName: nickName },
        dataType: "json",
        async: false,
        success: function (data) {
            json = data;
        }
        , error: function (error) {
            layer.msg("系统错误" + error.ErrorString);
        }
    });
    return json;
}
//用户登录状态
ZYK.GetLoginStatus = function () {
    var json = null;
    $.ajax({
        type: "get",
        url: "/plus/Login.ashx",
        data: { action: "getLoginStatus", time: new Date().getTime() },
        dataType: "json",
        async: false, //同步；
        success: function (data) {
            json = data;
        }
       , error: function (error) {
           layer.msg("系统错误" + error.ErrorString);
       }
    });
    return json;
}
//登录成功样式
ZYK.ChangeUserLoginStatusHtml = function (userId, userName, userType, userAvatar, userSex) {
    $("#loginBox").hide();
    var loginSucceedHTML = "<div class=\"loginSucceedBox\">";
    if (userType == 0) {
        loginSucceedHTML += "<a href=\"/SchoolCenter\" target=\"_blank\">" + userName + "</a>|";
        $(".resourceUpload").remove();
    }
    else {
        loginSucceedHTML += "<a href=\"/UserCenter\" class=\"head_portrait\" title=\"前往用户中心\" target=\"_blank\"><img src=\"" + (userAvatar != null && userAvatar != "" ? userAvatar : (userSex ? "/images/avatar_man.png" : "/images/avatar_woman.png")) + "\"></a>";
        $.ajax({
            type: "get",
            url: "/plus/Login.ashx",
            data: { action: "getUserNoticeCount", userId: userId },
            dataType: "json",
            async: false,
            success: function (count) {
                if (parseInt(count) > 0 && parseInt(count) <= 99) {
                    loginSucceedHTML += "<a href=\"/UserCenter\" target=\"_blank\"  title=\"" + userName + "\" target=\"_blank\">" + userName + "</a>";
                    loginSucceedHTML += "<a href=\"/UserCenter/SystemNotice.aspx\"  title=\"您有" + count + "条未读通知，点击查看\" target=\"_blank\"  class=\"new_box\"><i class=\"icon_news\"></i><span>" + count + "</span></a>|";
                }
                else if (parseInt(count) > 99) {
                    loginSucceedHTML += "<a href=\"/UserCenter\" target=\"_blank\" title=\"" + userName + "\" target=\"_blank\">" + userName + "</a>";
                    loginSucceedHTML += "<a href=\"/UserCenter/SystemNotice.aspx\" title=\"您有" + count + "条未读通知，点击查看\" target=\"_blank\"  class=\"new_box\"><i class=\"icon_news\"></i><span>" + count + "+</span></a>|";
                }
                else
                    loginSucceedHTML += "<a href=\"/UserCenter\" target=\"_blank\" title=\"" + userName + "\" target=\"_blank\">" + userName + "</a>|";
            },
            error: function (error) {
                layer.msg("系统错误" + error.ErrorString);
            }
        });

    }
    loginSucceedHTML += "<a href=\"javascript:;\" onclick=\"LoginOut();\">退出</a>";
    loginSucceedHTML += "</div>";
    return loginSucceedHTML;
}
/*获取个人资料*/
ZYK.GetUserInfo = function () {
    var json = null;
    $.ajax({
        type: "get",
        url: "/plus/User.ashx",
        data: { action: "getInfo", time: new Date().getTime() },
        dataType: "json",
        async: false,
        success: function (data) {
            json = data;
        }
        , error: function (error) {
            layer.msg("系统错误" + error.ErrorString);
        }
    });
    return json;
}
/*获取学校资料*/
ZYK.GetSchoolInfo = function () {
    var json = null;
    $.ajax({
        type: "get",
        url: "/plus/School.ashx",
        data: { action: "getInfo", time: new Date().getTime() },
        dataType: "json",
        async: false,
        success: function (data) {
            json = data;
        }
        , error: function (error) {
            layer.msg("系统错误" + error.ErrorString);
        }
    });
    return json;
}

Date.prototype.Format = function (fmt) { //author: meizz   
    var o = {
        "M+": this.getMonth() + 1,                 //月份   
        "d+": this.getDate(),                    //日   
        "h+": this.getHours(),                   //小时   
        "m+": this.getMinutes(),                 //分   
        "s+": this.getSeconds(),                 //秒   
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度   
        "S": this.getMilliseconds()             //毫秒   
    };
    if (/(y+)/.test(fmt))
        fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt))
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}
function GetQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
}

/*顶部数量*/
$.ajax({
    type: "get",
    url: "/plus/GetCounts.ashx",
    data: { action: "getCount", time: new Date().getTime() },
    dataType: "json",
    success: function (data) {
        $("#schoolCount").html(data.d);
        $("#todayCount").html(data.a);
        $("#totalCount").html(data.b);
    }
});