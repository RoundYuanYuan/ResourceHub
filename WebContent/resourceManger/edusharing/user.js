$(function () {
    GetLoginStatus();
    $(".lay_logreg input").focus(function () {
        $(this).removeClass("error");
    }).blur(function () {
        if ($.trim($(this).val()) == "") {
            $(this).addClass("error");
        }
    });
    /*用户登录*/
    $("#btnLogin").click(function () {
        Login();
    });
    /*用户注册*/
    $("#btnRegister").click(function () {
        Register();
    });
    /*用户注册，发送验证码*/
    $("#verbtn").click(function () {
        SendValidateCode();
    });
    /*重新发送邮件*/
    $("#btnSendMail").click(function () {
        SendMail();
    });
    /*帐号绑定*/
    $("#btnAccountBind").click(function () {
        AccountBind();
    });
    /*更改绑定类型*/
    $("#btnChangeBindType").click(function () {
        ChangeBindType();
    });
    /*找回密码，发送验证码*/
    $("#btnGetCode").click(function () {
        FindPassSendMail();
    });
    /*找回密码，修改密码*/
    $("#btnFindPass").click(function () {
        FindPassChangePass();
    });
    /*手机绑定,验证码*/
    $("#btnPhoneYZ").click(function () {
        PhoneValidateCode();
    });
    /*手机绑定*/
    $("#btnPhoneBind").click(function () {
        PhoneBindDown();
    });
    $(".resourceUpload").click(function () {
        ResourceSubmission();
    });
});
function ResourceSubmission() {
    var json = ZYK.GetLoginStatus();
    if (json != null) {
        if (json.UserId > 0) {
            window.open('/UserCenter/ResourceSubmission/');
            //window.location.href = "/UserCenter/ResourceSubmission/"
        }
        else {
            LoginBox();
        }
    }
    else {
        LoginBox();
    }
}
/*找回密码，发送验证码*/
function FindPassSendMail() {
    var userName = $("#txtUserName");
    if ($.trim($.trim(userName.val())) == "") {
        userName.focus();
        layer.tips('用户名不能为空！', userName, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    if (/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/.test($.trim(userName.val())) == false && /^(((13[0-9]{1})|(14[0-9]{1})|(15[0-9]{1})|(17[0-9]{1})|(18[0-9]{1}))+\d{8})$/.test($.trim(userName.val())) == false) {
        userName.focus();
        layer.tips('用户名输入不符合规则！', userName, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    var txtphoValidateCode = $("#txtphoValidateCode");
    if ($.trim($.trim(txtphoValidateCode.val())) == "") {
        txtphoValidateCode.focus();
        layer.tips('请输入图片验证码！', txtphoValidateCode, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    var cookieValidateCode = $.cookie("ValidateCode");
    if ($.trim(txtphoValidateCode.val()).toLowerCase() != $.trim(cookieValidateCode).toLowerCase()) {
        layer.tips('图片验证码错误,请重新填写！', txtphoValidateCode, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    $.ajax({
        type: "post",
        url: "/plus/User.ashx",
        data: { action: "findPassSendMail", userName: escape(userName.val()) },
        success: function (msg) {
            if (msg == "success") {
                $("#sendMailInfo").show();
                $("#btnGetCode").html("获取校验码（<i id='time'>60</i>）");
                $("#btnGetCode").removeClass("get").addClass("disable");
                $('#btnGetCode').unbind("click");
                CountDown();

            }
            else {
                layer.msg(msg);
            }
        }
        , error: function () {
            layer.msg("系统错误");
        }

    });
}
/*倒计时*/
function CountDown() {
    var sEcs = parseInt($("#time").text());
    if (--sEcs > 0) {
        $("#time").text(sEcs);
        setTimeout("CountDown()", 1000);
    }
    else {
        $("#btnGetCode").html("获取校验码");
        $("#btnGetCode").removeClass("disable").addClass("get");
        $("#btnGetCode").click(function () {
            FindPassSendMail();
        });
    }
}
/*找回密码，修改密码*/
function FindPassChangePass() {
    var userName = $("#txtUserName");
    if ($.trim($.trim(userName.val())) == "") {
        userName.focus();
        layer.tips('用户名不能为空！', userName, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    if (/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/.test($.trim(userName.val())) == false && /^(((13[0-9]{1})|(14[0-9]{1})|(15[0-9]{1})|(17[0-9]{1})|(18[0-9]{1}))+\d{8})$/.test($.trim(userName.val())) == false) {
        userName.focus();
        layer.tips('用户名输入不符合规则！', userName, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    var txtphoValidateCode = $("#txtphoValidateCode");
    if ($.trim($.trim(txtphoValidateCode.val())) == "") {
        txtphoValidateCode.focus();
        layer.tips('请输入图片验证码！', txtphoValidateCode, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    var cookieValidateCode = $.cookie("ValidateCode");
    if ($.trim(txtphoValidateCode.val()).toLowerCase() != $.trim(cookieValidateCode).toLowerCase()) {
        layer.tips('图片验证码错误,请重新填写！', txtphoValidateCode, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    var validateCode = $("#txtValidateCode");
    if ($.trim(validateCode.val()) == "") {
        validateCode.focus();
        layer.tips('验证码不能为空！', validateCode, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    var userPass = $("#txtUserPass");
    if ($.trim(userPass.val()) == "") {
        userPass.focus();
        layer.tips('用户密码不能为空！', userPass, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    var userPassAgain = $("#txtUserPassAgain");
    if ($.trim(userPassAgain.val()) != $.trim(userPass.val())) {
        userPassAgain.focus();
        layer.tips('用户密码不一致！', userPassAgain, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    $.ajax({
        type: "post",
        url: "/plus/User.ashx",
        data: { action: "findPassChangePass", userName: escape(userName.val()), phoValidateCode: escape(txtphoValidateCode.val()), userPass: escape(userPass.val()), validateCode: escape(validateCode.val()) },
        success: function (msg) {
            if (msg == "success") {
                location.href = "/login.html";
            }
            else {
                layer.msg(msg);
            }
        }
        , error: function () {
            layer.msg("系统错误");
        }

    });

}
/*更改绑定类型*/
function ChangeBindType() {
    var type = parseInt($("#hdnType").val());
    if (type == 0) {
        type = 1;
        $("#infoMail").text("请输入您的帐号");
        $("#infoPass").text("请输入您的密码");
        $("#btnAccountBind").text("绑定帐号");
        $("#inputPassAgain").hide();
        $("#infoPassAgain").hide();
        $(".last").hide();
        $("#hdnType").val(type);
    } else {
        type = 0;
        $("#infoMail").text("密码遗忘或被盗时，通过邮箱重置密码");
        $("#infoPass").text("6~16个字符，包括字母、数字、特殊符号 区分大小写");
        $("#btnAccountBind").text("确认注册");
        $("#inputPassAgain").show();
        $("#infoPassAgain").show();
        $(".last").show();
        $("#hdnType").val(type);
    }
}
/*帐号绑定*/
function AccountBind() {
    var userEmail = $("#txtEmail");
    if ($.trim($.trim(userEmail.val())) == "") {
        userEmail.focus();
        layer.tips('邮箱地址不能为空！', userEmail, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    var userPass = $("#txtUserPass");
    if ($.trim(userPass.val()) == "") {
        userPass.focus();
        layer.tips('用户密码不能为空！', userPass, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    var nickName = $("#txtNickName").text();
    var type = parseInt($("#hdnType").val());
    if (type == 0) {

        if (/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/.test($.trim(userEmail.val())) == false) {
            userEmail.focus();
            layer.tips('邮箱地址输入不符合规则！', userEmail, {
                tips: [3, '#e4393c']
            });
            return false;
        }
        var passLength = $.trim(userPass.val()).length;
        if (passLength < 6 || passLength > 20) {
            userPass.focus();
            layer.tips('密码只能输入6~20个字符！', userPass, {
                tips: [3, '#e4393c']
            });
            return false;
        }
        var userPassAgain = $("#txtUserPassAgain");
        if ($.trim(userPassAgain.val()) != $.trim(userPass.val())) {
            userPassAgain.focus();
            layer.tips('用户密码不一致！', userPassAgain, {
                tips: [3, '#e4393c']
            });
            return false;
        }
        var json = ZYK.AccountBindRegister(escape(userPass.val()), escape(userEmail.val()), nickName);
        if (json != null) {
            if (json.State == 1) {
                location.href = "/Account/RegisterSuccess.html?mail=" + escape(userEmail.val());
            }
            else {
                var html = "";
                switch (json.ErrorString) {
                    case "Null":
                        html = "请输入内容";
                        break;
                    case "Error":
                        html = "系统错误，请重试";
                        break;
                    case "UnSafe":
                        html = "有危险字符，不能登录";
                        break;
                    case "SystemError":
                        html = "系统错误，请重试";
                        break;
                    case "UserInputError":
                        html = "填写内容不符合规则";
                        break;
                    case "Haved":
                        html = "用户名已存在，请修改后重试！";
                        layer.tips('用户名已存在！', userEmail, {
                            tips: [3, '#e4393c']
                        });
                        break;
                    case "Fail":
                        html = "用户名或密码错误，请重试！";
                        break;

                }
                userPass.val("");
                userPassAgain.val("");
                layer.msg(html);
            }

        }
    }
    else {
        var json = ZYK.AccountBindLogin(escape(userEmail.val()), escape(userPass.val()), nickName);
        if (json != null) {
            if (json.State == 1) {
                location.href = "/";
            }
            else {
                var html = "";
                switch (json.ErrorString) {
                    case "Null":
                        html = "请输入内容";
                        break;
                    case "Error":
                        html = "系统错误，请重试";
                        break;
                    case "UnSafe":
                        html = "有危险字符，不能登录";
                        break;
                    case "IpError":
                        html = "您的Ip不符合要求";
                        break;
                    case "SystemError":
                        html = "系统错误，请重试";
                        break;
                    case "Fail":
                        html = "用户名或密码错误，请重试！";
                        break;

                }
                userPass.val("");
                layer.msg(html);
            }
        }
    }

}
function Login() {
    var userName = $("#txtUserName");
    if ($.trim(userName.val()) == "") {
        userName.focus();
        layer.tips('用户名不能为空！', userName, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    var userPass = $("#txtUserPass");
    if ($.trim(userPass.val()) == "") {
        userPass.focus();
        layer.tips('用户密码不能为空！', userPass, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    var validateCode = $("#txtValidateCode");
    var loginErrorCount = 0;
    if ($.cookie("LoginErrorCount") != null) {
        loginErrorCount = parseInt($.cookie("LoginErrorCount"));
        if (loginErrorCount > 3) {
            $("#loginValidateCode").show();
            if ($.trim(validateCode.val()) == "") {
                validateCode.focus();
                layer.tips('验证码不能为空！', validateCode, {
                    tips: [3, '#e4393c']
                });
                return false;
            }
            else {
                var cookieValidateCode = $.cookie("ValidateCode");
                if ($.trim(validateCode.val()).toLowerCase() != $.trim(cookieValidateCode).toLowerCase()) {
                    layer.tips('验证码错误,请重新填写！', validateCode, {
                        tips: [3, '#e4393c']
                    });
                    return false;
                }
            }
        }
    }
    var json = ZYK.Login(escape(userName.val()), escape(userPass.val()), escape(validateCode.val()));
    if (json != null) {
        if (json.State == 1) {
            if (json.UserType == 0)
                parent.$(".resourceUpload").remove();
            $.cookie("LoginErrorCount", 0);
            parent.$("#loginBox").hide();
            var html = ZYK.ChangeUserLoginStatusHtml(json.UserId, json.RealName, json.UserType, json.UserAvatar, json.UserSex);
            parent.$("#login").append(html);
            if (json.SchoolNotice != null && json.SchoolNotice.NoticeContent != null) {
                var noticeHtml = '<div class="prompt">';
                noticeHtml += '<div class="p_title clearfix"><a class="fr" href="javascript:void(0);" onclick="$(\'.prompt\').hide();">关闭</a></div>';
                noticeHtml += "<div class='p_content'>" + json.SchoolNotice.NoticeContent + "</div>";
                noticeHtml += "</div>";
                parent.$("#login").append(noticeHtml);
            }
            parent.layer.closeAll();
        }
        else {
            loginErrorCount++;
            $.cookie("LoginErrorCount", loginErrorCount);
            var html = "";
            switch (json.ErrorString) {
                case "Null":
                    html = "请输入内容";
                    break;
                case "Error":
                    html = "系统错误，请重试";
                    break;
                case "UnSafe":
                    html = "有危险字符，不能登录";
                    break;
                case "NoUser":
                    html = "此用户不存在，请注册";
                    break;
                case "IpError":
                    html = "您的Ip不符合要求";
                    break;
                case "LoginProvinceError":
                    var msg = '<div style="width:430px;height:130px; padding:10px; line-height:30px;">' + json.IpErrorString + '</div>';
                    parent.layer.open({
                        type: 1,
                        area: ["470px", "200px"],
                        content: msg
                    });
                    break;
                case "ValidateCodeError":
                    html = "验证码已过期,请重新填写";
                    break;
                case "Fail":
                    html = "用户名或密码错误，请重试！";
                    break;

            }
            userPass.val("");
            validateCode.val("");
            $(".verimg").click();
            $(".errorinfo").text(html);
        }
    }
}
function Register() {
    var userName = $("#txtUserName");
    if ($.trim($.trim(userName.val())) == "") {
        userName.focus();
        layer.tips('帐号不能为空！', userName, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    var accord = false;
    //邮箱
    if (/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/.test($.trim(userName.val()))) {
        accord = true;
    } else {
        if (/^(((13[0-9]{1})|(14[0-9]{1})|(15[0-9]{1})|(17[0-9]{1})|(18[0-9]{1}))+\d{8})$/.test($.trim(userName.val()))) {//手机
            accord = true;
        }
    }
    if (!accord) {
        userName.focus();
        layer.tips('帐号输入不符合规则！', userName, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    var validateCode = $("#txtValidateCode");
    if ($.trim(validateCode.val()) == "") {
        validateCode.focus();
        layer.tips('验证码不能为空！', validateCode, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    var userPass = $("#txtUserPass");
    if ($.trim(userPass.val()) == "") {
        userPass.focus();
        layer.tips('用户密码不能为空！', userPass, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    var passLength = $.trim(userPass.val()).length;
    if (passLength < 6 || passLength > 16) {
        userPass.focus();
        layer.tips('密码只能输入6~16个字符！', userPass, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    var index = layer.load();
    var json = ZYK.Register(userPass.val(), userName.val(), validateCode.val());
    layer.close(index);
    if (json != null) {
        if (json.State == 1) {
            parent.$("#loginBox").hide();
            var html = ZYK.ChangeUserLoginStatusHtml(json.UserId, json.RealName, json.UserType, json.UserAvatar, json.UserSex);
            parent.$("#login").append(html);
            parent.layer.closeAll();
        }
        else {
            var html = json.ErrorString;
            userPass.val("");
            $(".errorinfo").text(html);
        }

    }
}
//注册发送验证码
function SendValidateCode() {
    var userName = $("#txtUserName");
    if ($.trim($.trim(userName.val())) == "") {
        userName.focus();
        layer.tips('帐号不能为空！', userName, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    var accord = false;
    //邮箱
    if (/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/.test($.trim(userName.val()))) {
        accord = true;
    } else {
        if (/^(((13[0-9]{1})|(14[0-9]{1})|(15[0-9]{1})|(17[0-9]{1})|(18[0-9]{1}))+\d{8})$/.test($.trim(userName.val()))) {//手机
            accord = true;
        }
    }
    if (!accord) {
        userName.focus();
        layer.tips('帐号输入不符合规则！', userName, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    $.post("/Plus/Register.ashx", { action: "sendValidateCode", userName: userName.val() }, function (data) {
        if (data == "ok") {
            $("#verbtn").addClass("disabled").prop("disabled", true);
            ValidateCodeCountDown(60);
        } else {
            layer.msg(data);
        }
    });
}
/*倒计时*/
function ValidateCodeCountDown(sEcs) {
    if (--sEcs > 0) {
        $("#verbtn").val("获取验证码（" + sEcs + "）");
        setTimeout("ValidateCodeCountDown(" + sEcs + ")", 1000);
    }
    else {
        $("#verbtn").val("获取验证码").removeClass("disabled").prop("disabled", false);
    }
}
/*获取登录状态*/
function GetLoginStatus() {
    var json = ZYK.GetLoginStatus();
    if (json != null) {
        if (json.UserId > 0) {
            $("#loginBox").hide();
            var html = ZYK.ChangeUserLoginStatusHtml(json.UserId, json.UserName, json.UserType, json.UserAvatar, json.UserSex);
            $("#login").append(html);
        }
        else {
            AutoLogin();
        }
    }
    else {
        AutoLogin();
    }
}
/*退出登录*/
function LoginOut() {
    var index = layer.confirm('确定退出吗？', {
        btn: ['确定', '取消']
    }, function () {
        $.get("/plus/Login.ashx", { action: "loginOut" }, function (msg) {
            if (msg == "ok") {
                $(".loginSucceedBox").hide();
                $("#loginBox").show();
                layer.close(index);
            }
        });
    });

}
/*网校自动登录*/
function AutoLogin() {
    $.ajax({
        type: "get",
        url: "/plus/Login.ashx",
        data: { action: "autoLogin" },
        dataType: "json",
        success: function (data) {
            var json = data;
            if (json.State == 1) {
                $("#loginBox").hide();
                var html = ZYK.ChangeUserLoginStatusHtml(json.RealName, 0);
                $("#login").append(html);
            }
        }
        , error: function (error) {
            layer.msg("系统错误" + error);
        }
    });
}
function SendMail() {
    var userMail = $("#lbUserMail").text();
    $.ajax({
        type: "post",
        url: "/plus/Register.ashx",
        data: { action: "sendMail", userMail: userMail },
        success: function (msg) {
            if (msg == "ok") {
                layer.msg("已发送");
            }
            else {
                layer.msg("帐号异常");
            }
        }
        , error: function (error) {
            layer.msg("系统错误");
        }
    });
}
//手机帐号绑定，发送验证码
function PhoneValidateCode() {
    var userName = $("#txtUserName");
    if ($.trim(userName.val()) == "") {
        userName.focus();
        layer.tips('用户名不能为空！', userName, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    //var code = $("#txtCode");
    //if ($.trim(code.val()) == "") {
    //    code.focus();
    //    layer.tips('验证码不能为空！', code, {
    //        tips: [3, '#e4393c']
    //    });
    //    return false;
    //}
    $.post("/Plus/User.ashx", { action: "phoneBindSend", phone: userName.val() }, function (data) {
        if (data == "ok") {
            layer.msg("短信已发送");
        } else {
            layer.msg(data);
        }
    });
}
function PhoneBindDown() {
    var userName = $("#txtUserName");
    if ($.trim(userName.val()) == "") {
        userName.focus();
        layer.tips('用户名不能为空！', userName, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    var code = $("#txtCode");
    if ($.trim(code.val()) == "") {
        code.focus();
        layer.tips('验证码不能为空！', code, {
            tips: [3, '#e4393c']
        });
        return false;
    }
    $.post("/Plus/User.ashx", { action: "phoneBindDown", phone: userName.val(), validateCode: code.val() }, function (data) {
        if (data == "ok") {
            layer.alert("手机绑定成功!", function () {
                parent.layer.closeAll();
            });
        } else {
            layer.msg(data);
        }
    });

}