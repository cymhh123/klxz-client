<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <title>欢迎使用</title>
    <link rel="Shortcut Icon" href="${ctxStatic}/logo.ico">
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/bootstrap/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/bootstrap/style.min.css" />
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/bootstrap/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/css/welcome.css" />
    <script type="text/javascript" src="${ctxStatic}/js/jquery.js"></script>
    <script type="text/javascript" src="${ctxStatic}/swfobject.js"></script>
    <script type="text/javascript">
        swfobject.registerObject("myId", "9.0.0", "${ctxStatic}/expressInstall.swf");
    </script>
</head>
<body>
    <div class="bar">
        <div class="curr_version">
            当前版本：${currVersion}
        </div>
        <div class="flashDiv">
            <object id="myId" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="200" height="40">
                <param name="movie" value="${ctxStatic}/expressInstall.swf" />
                <!--[if !IE]>-->
                <object type="application/x-shockwave-flash" data="${ctxStatic}/expressInstall.swf" width="200" height="40">
                    <!--<![endif]-->
                    <div>
                        <span>请点击下面图标安装flash插件</span>
                        <p><a href="http://www.adobe.com/go/getflashplayer"><img src="${ctxStatic}/image/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>
                    </div>
                    <!--[if !IE]>-->
                </object>
                <!--<![endif]-->
            </object>
        </div>
        <div class="verDiv">
            <select id="verSel" class="form-control input-sm" class="ver_sel">
                <c:forEach items="${verList}" var="item">
                    <option value="${item.value}">${item.label}</option>
                </c:forEach>
            </select>
        </div>
        <div class="phone">
            <span>客服电话：</span>
            <span class="phone_span">${clientPhone}</span>
        </div>
        <div class="tip">
            <span>${tip2}</span>
            <c:if test="${currVersion < lateVersion}">
                <span class="down">${downLoad}<span>
            </c:if>
        </div>

    </div>
    <div class="wrap">
        <img src="${ctxStatic}/welcome.jpg" class="welcome_img">
        <div class="welcome">
            <img src="${ctxStatic}/welcome/${day}.png">
        </div>
        <div class="btnDiv" id="into">
            <a class="btn btn-primary">
                点击进入
                <%--点击进入（<span id="times">5</span>秒）--%>
            </a>
        </div>
    </div>
</body>
<script>
    $(function () {
        var initVersion = "${initVersion}";
        $("#verSel").val(initVersion);
        $("#into").click(function () {
            var version = $("#verSel").val();
            window.location.href = "${ctx}/index?curVersion="+version+"&v=1.0";
        });
    })
</script>
</html>
