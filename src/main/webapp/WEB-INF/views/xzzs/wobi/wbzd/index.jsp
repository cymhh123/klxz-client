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
        #binagaodingwei{width:213px;height:78px;}
        #binagaodingwei a:link,#binagaodingwei a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/wb/wbzd/binagaodingwei.png) no-repeat;display:block;}
        #binagaodingwei a:hover{background:url(${ctxStatic}/xzzs/image/wb/wbzd/binagaodingwei-2.png) no-repeat;}
        #shangkaodiandingwei{width:213px;height:78px;}
        #shangkaodiandingwei a:link,#shangkaodiandingwei a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/wb/wbzd/shangkaodiandingwei.png) no-repeat;display:block;}
        #shangkaodiandingwei a:hover{background:url(${ctxStatic}/xzzs/image/wb/wbzd/shangkaodiandingwei-2.png) no-repeat;}
        #xiakaodiandingwei{width:213px;height:78px;}
        #xiakaodiandingwei a:link,#xiakaodiandingwei a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/wb/wbzd/xiakaodiandingwei.png) no-repeat;display:block;}
        #xiakaodiandingwei a:hover{background:url(${ctxStatic}/xzzs/image/wb/wbzd/xiakaodiandingwei-2.png) no-repeat;}
        #zuoyoudingwei{width:213px;height:78px;}
        #zuoyoudingwei a:link,#zuoyoudingwei a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/wb/wbzd/zuoyoudingwei.png) no-repeat;display:block;}
        #zuoyoudingwei a:hover{background:url(${ctxStatic}/xzzs/image/wb/wbzd/zuoyoudingwei-2.png) no-repeat;}

        #zhangbidingwei{width:213px;height:78px;}
        #zhangbidingwei a:link,#zhangbidingwei a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/wb/wbzd/zhangbidingwei.png) no-repeat;display:block;}
        #zhangbidingwei a:hover{background:url(${ctxStatic}/xzzs/image/wb/wbzd/zhangbidingwei-2.png) no-repeat;}

        #shouxingdingwei{width:213px;height:78px;}
        #shouxingdingwei a:link,#shouxingdingwei a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/wb/wbzd/shouxingdingwei.png) no-repeat;display:block;}
        #shouxingdingwei a:hover{background:url(${ctxStatic}/xzzs/image/wb/wbzd/shouxingdingwei-2.png) no-repeat;}
    </style>
</head>
<body>

<div id="content" class="wobi-wbzd">
    <div id="list-wb" style="top:42%;left: 48%">
        <ul>
            <li><div id="binagaodingwei"><a href="${ctx}/xzzs/wobi/wbzd/content?code=bngdw" onmouseover="sound()"></a></div></li>
            <li style="margin-right:0px;"><div id="shangkaodiandingwei"><a href="${ctx}/xzzs/wobi/wbzd/content?code=skddw" onmouseover="sound()"></a></div></li>

            <li style="margin-left:15px;"><div id="xiakaodiandingwei"><a href="${ctx}/xzzs/wobi/wbzd/content?code=xkddw" onmouseover="sound()"></a></div></li>
            <li style="margin-right:0px;"><div id="zuoyoudingwei"><a href="${ctx}/xzzs/wobi/wbzd/content?code=zynddw" onmouseover="sound()"></a></div></li>

            <li style="margin-left:30px;"><div id="zhangbidingwei"><a href="${ctx}/xzzs/wobi/wbzd/content?code=zbytxdw" onmouseover="sound()"></a></div></li>
            <li style="margin-right:0px;"><div id="shouxingdingwei"><a href="${ctx}/xzzs/wobi/wbzd/content?code=sxdwxl" onmouseover="sound()"></a></div></li>
        </ul>
    </div>
    <div id="bhBtn" style="position:absolute;bottom:42px;right:77px">
        <a href="${ctx}/xzzs/wobi/index"><img src="${ctxStatic}/shufaketang/images/button/return1.png" class="btnToggle" width="85" height="57" /></a>
    </div>
</div>
</body>
</html>
