//页面加载
$(document).ready(function () {
    webVisit();
    //ipRuleCheck();
});

//访问统计
function webVisit() {
    var currentUrl = window.location.href;
    var preUrl = document.referrer;
    var brower = window.navigator.userAgent;
    var isMobile = !!brower.match(/AppleWebKit.*Mobile.*!/) || !!brower.match(/(iPhone|iPod|Android|ios|iPad)/i);
    var type = 1;
    if (isMobile) {
        type = 2;
    }
    var is360 = _mime("type", "application/vnd.chromium.remoting-viewer");
    $.ajax({
        url: '/tools/web_ajax.ashx?action=webvisit_add',
        async: false,
        type: 'post',
        data: { "currentUrl": currentUrl, "preUrl": preUrl, is360: is360, type: type }
    });
}

//IP规则限制
function ipRuleCheck() {
    $.ajax({
        url: '/tools/web_ajax.ashx?action=iprule_check',
        async: false,
        type: 'post',
        dataType: 'json',
        success: function (data) {
            if (data.status == 'n') {
                window.location = data.info;
            }
        }
    });
}

//防复制
function forbidCopy() {
    document.oncontextmenu = new Function("event.returnValue=false");   //右键菜单
    document.oncopy = new Function("event.returnValue=false");  //复制
    document.onselectstart = new Function('event.returnValue=false;');    //选中
    //F12
    document.onkeydown = function () {
        if (window.event && window.event.keyCode == 123) {
            event.keyCode = 0;
            event.returnValue = false;
            return false;
        }
    };
}

/*切换验证码*/
function ToggleCode(obj, codeurl) {
    $(obj).attr("src", codeurl + "?time=" + Math.random());
    return false;
}

//测试mime
function _mime(option, value) {
    var mimeTypes = navigator.mimeTypes;
    for (var mt in mimeTypes) {
        if (mimeTypes[mt][option] == value) {
            return true;
        }
    }
    return false;
}