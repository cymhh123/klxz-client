<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>坐姿训练</title>
<link rel="Shortcut Icon" href="${ctxStatic}/logo.ico">
<link rel="stylesheet" type="text/css" href="${ctxStatic}/xzzs/style.css" />
<script language="javascript" src="${ctxStatic}/xzzs/script/flash.js"></script>
<style type="text/css">
    #zztj,#zzzd,#zzc,#zzjc,#cjcw{width:173px;height:68px;}
    #zztj a:link,#zztj a:visited{width:173px;height:68px;background:url(${ctxStatic}/xzzs/image/zz/zztj1.gif) no-repeat;display:block;}
    #zztj a:hover{background:url(${ctxStatic}/xzzs/image/zz/zztj2.gif) no-repeat;}

    /* #zzzd,#zzc,#zzjc { display:none;} */

    #zzzd a:link,#zzzd a:visited{width:173px;height:68px;background:url(${ctxStatic}/xzzs/image/zz/zzzd1.gif) no-repeat;display:block;}
    #zzzd a:hover{background:url(${ctxStatic}/xzzs/image/zz/zzzd2.gif) no-repeat;}
    #zzc a:link,#zzc a:visited{width:173px;height:68px;background:url(${ctxStatic}/xzzs/image/zz/zzc1.gif) no-repeat;display:block;}
    #zzc a:hover{background:url(${ctxStatic}/xzzs/image/zz/zzc2.gif) no-repeat;}
    #zzjc a:link,#zzjc a:visited{width:173px;height:68px;background:url(${ctxStatic}/xzzs/image/zz/zzjc1.gif) no-repeat;display:block;}
    #zzjc a:hover{background:url(${ctxStatic}/xzzs/image/zz/zzjc2.gif) no-repeat;}
    #cjcw a:link,#cjcw a:visited{width:173px;height:68px;background:url(${ctxStatic}/xzzs/image/zz/cjcw1.gif) no-repeat;display:block;}
    #cjcw a:hover{background:url(${ctxStatic}/xzzs/image/zz/cjcw2.gif) no-repeat;}
</style>
<body>

<div id="content" class="zuozi">
    <div id="list-zz">
        <ul>
            <li><div id="zztj"><a href="${ctx}/xzzs/zuozi/zztj"></a></div></li>
            <li style="margin-right:0px;"><div id="zzzd"><a href="${ctx}/xzzs/zuozi/zzzd/index"></a></div></li>
        </ul>
        <ul style="margin-left:32px;">
            <li><div id="zzc"><a href="${ctx}/xzzs/zuozi/zzc/index"></a></div></li>
            <li style="margin-right:0px;"><div id="zzjc"><a href="${ctx}/xzzs/zuozi/zzjc"></a></div></li>
        </ul>
        <ul style="margin-left:64px;">
            <li><div id="cjcw"><a href="${ctx}/xzzs/zuozi/cjcw/index"></a></div></li>
        </ul>
    </div>
    <div id="bhBtn" style="position:absolute;bottom:87px;right:125px">
        <a href="${ctx}/xzzs/index"><img src="${ctxStatic}/shufaketang/images/button/return1.png" class="btnToggle" width="85" height="57" /></a>
    </div>
</div>
</body>
</html>
