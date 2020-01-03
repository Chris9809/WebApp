;

var ctx  =  constant.CTX;
$(function () {
    //隐藏错误信息
    errorMsgHandler(false);
});

function errorMsgHandler(show){
    if(!show){
        //show为false，隐藏
        $("#loginFailedAlert").hide();
    }else {
        //zhans
        $("#loginFailedAlert").addClass("show");
    }
}

function loginValidate() {
    var role;
    var username = $.common.trim($("input[name='username']").val());
    var password = $.common.trim($("input[name='password']").val());
    var remeberMe = $("input[name='remeberMe']").is(':checked');
    var isStudent = $("#inlineRadio1").is(':checked');
    var isAdmin = $("#inlineRadio2").is(':checked');

    if(isStudent==true){
        role="student";
    }else {
        role="admin"
    }



    $.ajax({
        type: "post",
        url: ctx + "login",
        data: {
            "username": username,
            "password": password,
            "remeberMe": remeberMe,
            "role":role
        },
        success: function(result) {
            if (result.code == 0) {
                if(result.data=='admin'){
                    location.href="admin/main"
                }else{
                    location.href="/main"
                }
            } else {
                errorMsgHandler(true);
            }
        }
    });
}
