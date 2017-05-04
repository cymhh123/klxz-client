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
        #wbtj{width:173px;height:68px;}
        #wbtj a:link,#wbtj a:visited{width:173px;height:68px;background:url(${ctxStatic}/xzzs/image/wb/wbtj1.gif) no-repeat;display:block;}
        #wbtj a:hover{background:url(${ctxStatic}/xzzs/image/wb/wbtj2.gif) no-repeat;}
        #wbzd{width:173px;height:68px;}
        #wbzd a:link,#wbzd a:visited{width:173px;height:68px;background:url(${ctxStatic}/xzzs/image/wb/wbzd1.gif) no-repeat;display:block;}
        #wbzd a:hover{background:url(${ctxStatic}/xzzs/image/wb/wbzd2.gif) no-repeat;}
        #wbc{width:173px;height:68px;}
        #wbc a:link,#wbc a:visited{width:173px;height:68px;background:url(${ctxStatic}/xzzs/image/wb/wbc1.gif) no-repeat;display:block;}
        #wbc a:hover{background:url(${ctxStatic}/xzzs/image/wb/wbc2.gif) no-repeat;}
        #wbjc{width:173px;height:68px;}
        #wbjc a:link,#wbjc a:visited{width:173px;height:68px;background:url(${ctxStatic}/xzzs/image/wb/wbjc1.gif) no-repeat;display:block;}
        #wbjc a:hover{background:url(${ctxStatic}/xzzs/image/wb/wbjc2.gif) no-repeat;}
        #cjcw{width:173px;height:68px;}
        #cjcw a:link,#cjcw a:visited{width:173px;height:68px;background:url(${ctxStatic}/xzzs/image/wb/cjcw1.gif) no-repeat;display:block;}
        #cjcw a:hover{background:url(${ctxStatic}/xzzs/image/wb/cjcw2.gif) no-repeat;}
    </style>
</head>
<body>

<div id="content" class="background-002-1">
    <div id="list-wb">
        <ul>
            <li><div id="wbtj"><a href="${ctx}/xzzs/wobi/wbtj" onmouseover="sound()"></a></div></li>
            <li style="margin-right:0px;"><div id="wbzd"><a href="${ctx}/xzzs/wobi/wbzd/index" onmouseover="sound()"></a></div></li>
            <li style="margin-left:30px;"><div id="wbc"><a href="${ctx}/xzzs/wobi/wbc/index" onmouseover="sound()"></a></div></li>
            <li style="margin-right:0px;"><div id="wbjc"><a href="${ctx}/xzzs/wobi/wbjc" onmouseover="sound()"></a></div></li>

            <li style="margin-left:60px;"><div id="cjcw"><a href="${ctx}/xzzs/wobi/cjcw/index" onmouseover="sound()"></a></div></li>
        </ul>
    </div>
    <div id="bhBtn" style="position:absolute;bottom:87px;right:125px">
        <a href="${ctx}/xzzs/index"><img src="${ctxStatic}/shufaketang/images/button/return1.png" class="btnToggle" width="85" height="57" /></a>
    </div>
</div>
</body>
</html>
