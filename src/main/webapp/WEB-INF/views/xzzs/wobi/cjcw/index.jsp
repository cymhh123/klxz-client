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
        #wobiguodi{width:213px;height:78px;}
        #wobiguodi a:link,#wobiguodi a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/wb/cjcw/wobiguodi.png) no-repeat;display:block;}
        #wobiguodi a:hover{background:url(${ctxStatic}/xzzs/image/wb/cjcw/wobiguodi-2.png) no-repeat;}
        
        #muzhibaobi{width:213px;height:78px;}
        #muzhibaobi a:link,#muzhibaobi a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/wb/cjcw/muzhibaobi.png) no-repeat;display:block;}
        #muzhibaobi a:hover{background:url(${ctxStatic}/xzzs/image/wb/cjcw/muzhibaobi-2.png) no-repeat;}
        
        #hukouqianbi{width:213px;height:78px;}
        #hukouqianbi a:link,#hukouqianbi a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/wb/cjcw/hukouqianbi.png) no-repeat;display:block;}
        #hukouqianbi a:hover{background:url(${ctxStatic}/xzzs/image/wb/cjcw/hukouqianbi-2.png) no-repeat;}
        
        #sizhiweibi{width:213px;height:78px;}
        #sizhiweibi a:link,#sizhiweibi a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/wb/cjcw/sizhiweibi.png) no-repeat;display:block;}
        #sizhiweibi a:hover{background:url(${ctxStatic}/xzzs/image/wb/cjcw/sizhiweibi-2.png) no-repeat;}

        #sizhiguozhi{width:213px;height:78px;}
        #sizhiguozhi a:link,#sizhiguozhi a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/wb/cjcw/sizhiguozhi.png) no-repeat;display:block;}
        #sizhiguozhi a:hover{background:url(${ctxStatic}/xzzs/image/wb/cjcw/sizhiguozhi-2.png) no-repeat;}

        #gouwanxiezi{width:213px;height:78px;}
        #gouwanxiezi a:link,#gouwanxiezi a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/wb/cjcw/gouwanxiezi.png) no-repeat;display:block;}
        #gouwanxiezi a:hover{background:url(${ctxStatic}/xzzs/image/wb/cjcw/gouwanxiezi-2.png) no-repeat;}
        
    </style>
</head>
<body>

<div id="content" class="wobi-cjcw">
    <div id="list-wb" style="top:44%;left: 50%;width: 650px;">
        <ul>
            <li style="margin-bottom: 9px;"><div id="wobiguodi"><a href="${ctx}/xzzs/wobi/cjcw/content?code=wbgd" onmouseover="sound()"></a></div></li>
            <li style="margin-right:0px;margin-bottom: 9px;"><div id="muzhibaobi"><a href="${ctx}/xzzs/wobi/cjcw/content?code=mzbb" onmouseover="sound()"></a></div></li>

            <li style="margin-left:15px;margin-bottom: 9px;"><div id="hukouqianbi"><a href="${ctx}/xzzs/wobi/cjcw/content?code=hkqb" onmouseover="sound()"></a></div></li>
            <li style="margin-right:0px;margin-bottom: 9px;"><div id="sizhiweibi"><a href="${ctx}/xzzs/wobi/cjcw/content?code=szwb" onmouseover="sound()"></a></div></li>

            <li style="margin-left:30px;margin-bottom: 9px;"><div id="sizhiguozhi"><a href="${ctx}/xzzs/wobi/cjcw/content?code=szgz" onmouseover="sound()"></a></div></li>
            <li style="margin-right:0px;margin-bottom: 9px;"><div id="gouwanxiezi"><a href="${ctx}/xzzs/wobi/cjcw/content?code=gwxz" onmouseover="sound()"></a></div></li>
        </ul>
    </div>
    <div id="bhBtn" style="position:absolute;bottom:42px;right:77px">
        <a href="${ctx}/xzzs/wobi/index"><img src="${ctxStatic}/shufaketang/images/button/return1.png" class="btnToggle" width="85" height="57" /></a>
    </div>
</div>
</body>
</html>
