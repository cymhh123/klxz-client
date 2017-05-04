<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>硬笔作品</title>
    <link rel="Shortcut Icon" href="${ctxStatic}/logo.ico">
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/xzzs/style.css" />
    <script language="javascript" src="${ctxStatic}/xzzs/script/flash.js"></script>
    <style type="text/css">
        #hengfu{width:233px;height:108px;}
        #hengfu a:link,#hengfu a:visited{width:233px;height:108px;background:url(${ctxStatic}/hardpen/hengfu.png) no-repeat;display:block;}
        #hengfu a:hover{background:url(${ctxStatic}/hardpen/hengfu-2.png) no-repeat;}
        #tiaofu{width:233px;height:108px;}
        #tiaofu a:link,#tiaofu a:visited{width:233px;height:108px;background:url(${ctxStatic}/hardpen/tiaofu.png) no-repeat;display:block;}
        #tiaofu a:hover{background:url(${ctxStatic}/hardpen/tiaofu-2.png) no-repeat;}
        #duilian{width:233px;height:108px;}
        #duilian a:link,#duilian a:visited{width:233px;height:108px;background:url(${ctxStatic}/hardpen/duilian.png) no-repeat;display:block;}
        #duilian a:hover{background:url(${ctxStatic}/hardpen/duilian-2.png) no-repeat;}
        #shanmian{width:233px;height:108px;}
        #shanmian a:link,#shanmian a:visited{width:233px;height:108px;background:url(${ctxStatic}/hardpen/shanmian.png) no-repeat;display:block;}
        #shanmian a:hover{background:url(${ctxStatic}/hardpen/shanmian-2.png) no-repeat;}
    </style>
</head>
<body>

<div id="content" style="background:url(${ctxStatic}/hardpen/yingbi.jpg) no-repeat;">
    <div id="list-wb" style="top:38%;left:48%">
        <ul>
            <li style=""><div id="hengfu"><a href="${ctx}/hardpen/one?code=hengfu" onmouseover="sound()"></a></div></li>
            <li style="margin-right:0px;"><div id="tiaofu"><a href="${ctx}/hardpen/one?code=tiaofu" onmouseover="sound()"></a></div></li>
            <li style="margin-top: 53px;"><div id="duilian"><a href="${ctx}/hardpen/one?code=duilian" onmouseover="sound()"></a></div></li>
            <li style="margin-top: 53px;margin-right:0px;"><div id="shanmian"><a href="${ctx}/hardpen/one?code=shanmian" onmouseover="sound()"></a></div></li>
        </ul>
    </div>
    <div id="bhBtn" style="position:absolute;bottom:83px;right:363px">
        <a href="${ctx}/index"><img src="${ctxStatic}/shufaketang/images/button/return1.png" class="btnToggle" width="85" height="57" /></a>
    </div>
</div>
</body>
</html>
