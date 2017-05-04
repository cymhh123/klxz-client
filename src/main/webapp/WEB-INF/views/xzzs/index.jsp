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
</head>
<body>

<div id="content" class="background-001">
    <div id="button-index">
        <ul>
            <li><div id="button-wb"><a href="${ctx}/xzzs/wobi/index" onmouseover="sound()"></a></div></li>
            <li style="margin-right:0px;"><div id="button-zz"><a href="${ctx}/xzzs/zuozi/index" onmouseover="sound()"></a></div></li>
            <li><div id="button-jx"><a href="${ctx}/xzzs/jingxin" onmouseover="sound()"></a></div></li>
            <li style="margin-right:0px;"><div id="button-jz"><a href="${ctx}/xzzs/jiangzuo" onmouseover="sound()"></a></div></li>
        </ul>
    </div>
    <div id="bhBtn" style="position:absolute;bottom:46px;right:90px">
        <a href="${ctx}/index"><img src="${ctxStatic}/shufaketang/images/button/return1.png" class="btnToggle" width="85" height="57" /></a>
    </div>
</div>
</body>
</html>
