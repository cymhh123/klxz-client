<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>写字姿势</title>
    <link rel="Shortcut Icon" href="${ctxStatic}/logo.ico">
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/xzzs/style.css" />
    <script language="javascript" src="${ctxStatic}/xzzs/script/flash.js"></script>
    <style type="text/css">
        #zbgz{width:213px;height:78px;}
        #zbgz a:link,#zbgz a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/wb/wbc/zhunbei.png) no-repeat;display:block;}
        #zbgz a:hover{background:url(${ctxStatic}/xzzs/image/wb/wbc/zhunbei-2.png) no-repeat;}
        #fjdz{width:213px;height:78px;}
        #fjdz a:link,#fjdz a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/wb/wbc/fenjie.png) no-repeat;display:block;}
        #fjdz a:hover{background:url(${ctxStatic}/xzzs/image/wb/wbc/fenjie-2.png) no-repeat;}
        #lgdz{width:213px;height:78px;}
        #lgdz a:link,#lgdz a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/wb/wbc/lianguan.png) no-repeat;display:block;}
        #lgdz a:hover{background:url(${ctxStatic}/xzzs/image/wb/wbc/lianguan-2.png) no-repeat;}
    </style>
</head>
<body>

<div id="content" class="wbc">
    <div id="list-wb" style="top:42%;left: 48%">
        <ul>
            <li style="margin-left: 355px;"><div id="zbgz"><a href="${ctx}/xzzs/wobi/wbc/zb" onmouseover="sound()"></a></div></li>
            <li style="margin-left:355px;"><div id="fjdz"><a href="${ctx}/xzzs/wobi/wbc/fjdz" onmouseover="sound()"></a></div></li>
            <li style="margin-left:355px;"><div id="lgdz"><a href="${ctx}/xzzs/wobi/wbc/lgdz" onmouseover="sound()"></a></div></li>
        </ul>
    </div>
    <div id="bhBtn" style="position:absolute;bottom:63px;right:138px">
        <a href="${ctx}/xzzs/wobi/index"><img src="${ctxStatic}/shufaketang/images/button/return1.png" class="btnToggle" width="85" height="57" /></a>
    </div>
</div>
</body>
</html>
