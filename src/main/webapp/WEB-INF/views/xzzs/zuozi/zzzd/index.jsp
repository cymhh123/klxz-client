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
        #liangdiankao{width:213px;height:78px;}
        #liangdiankao a:link,#liangdiankao a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/zz/zzzd/liangdiankao.png) no-repeat;display:block;}
        #liangdiankao a:hover{background:url(${ctxStatic}/xzzs/image/zz/zzzd/liangdiankao-2.png) no-repeat;}
        #bazixing{width:213px;height:78px;}
        #bazixing a:link,#bazixing a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/zz/zzzd/bazixing.png) no-repeat;display:block;}
        #bazixing a:hover{background:url(${ctxStatic}/xzzs/image/zz/zzzd/bazixing.png) no-repeat;}
        #toutaigao{width:213px;height:78px;}
        #toutaigao a:link,#toutaigao a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/zz/zzzd//toutaigao.png) no-repeat;display:block;}
        #toutaigao a:hover{background:url(${ctxStatic}/xzzs/image/zz/zzzd/toutaigao-2.png) no-repeat;}
        #jiaofangping{width:213px;height:78px;}
        #jiaofangping a:link,#jiaofangping a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/zz/zzzd/jiaofangping.png) no-repeat;display:block;}
        #jiaofangping a:hover{background:url(${ctxStatic}/xzzs/image/zz/zzzd/jiaofangping-2.png) no-repeat;}

    </style>
</head>
<body>

<div id="content" class="zz-zzzd">
    <div id="list-wb" style="top:46%;left: 50%">
        <ul>
            <li><div id="liangdiankao"><a href="${ctx}/xzzs/zuozi/zzzd/content?code=ldk" onmouseover="sound()"></a></div></li>
            <li style="margin-right:0px;"><div id="bazixing"><a href="${ctx}/xzzs/zuozi/zzzd/content?code=bzx" onmouseover="sound()"></a></div></li>

            <li style="margin-left:15px;"><div id="toutaigao"><a href="${ctx}/xzzs/zuozi/zzzd/content?code=ttg" onmouseover="sound()"></a></div></li>
            <li style="margin-right:0px;"><div id="jiaofangping"><a href="${ctx}/xzzs/zuozi/zzzd/content?code=jfp" onmouseover="sound()"></a></div></li>
        </ul>
    </div>
    <div id="bhBtn" style="position:absolute;bottom:42px;right:77px">
        <a href="${ctx}/xzzs/zuozi/index"><img src="${ctxStatic}/shufaketang/images/button/return1.png" class="btnToggle" width="85" height="57" /></a>
    </div>
</div>
</body>
</html>
