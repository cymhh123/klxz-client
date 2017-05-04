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
        #diaoshouwan{width:213px;height:78px;}
        #diaoshouwan a:link,#diaoshouwan a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/zz/cjcw/diaoshouwan.png) no-repeat;display:block;}
        #diaoshouwan a:hover{background:url(${ctxStatic}/xzzs/image/zz/cjcw/diaoshouwan-2.png) no-repeat;}
        
        #pazhuozi{width:213px;height:78px;}
        #pazhuozi a:link,#pazhuozi a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/zz/cjcw/pazhuozi.png) no-repeat;display:block;}
        #pazhuozi a:hover{background:url(${ctxStatic}/xzzs/image/zz/cjcw/pazhuozi-2.png) no-repeat;}
        
        #zuoyouhengfang{width:213px;height:78px;}
        #zuoyouhengfang a:link,#zuoyouhengfang a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/zz/cjcw/zuoshouhengfang.png) no-repeat;display:block;}
        #zuoyouhengfang a:hover{background:url(${ctxStatic}/xzzs/image/zz/cjcw/zuoshouhengfang-2.png) no-repeat;}
        
        #zuoyoudaoxie{width:213px;height:78px;}
        #zuoyoudaoxie a:link,#zuoyoudaoxie a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/zz/cjcw/zuoshoudaoxie.png) no-repeat;display:block;}
        #zuoyoudaoxie a:hover{background:url(${ctxStatic}/xzzs/image/zz/cjcw/zuoshoudaoxie-2.png) no-repeat;}

        #tuobei{width:213px;height:78px;}
        #tuobei a:link,#tuobei a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/zz/cjcw/tuobei.png) no-repeat;display:block;}
        #tuobei a:hover{background:url(${ctxStatic}/xzzs/image/zz/cjcw/tuobei-2.png) no-repeat;}

        #xiebei{width:213px;height:78px;}
        #xiebei a:link,#xiebei a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/zz/cjcw/xiebei.png) no-repeat;display:block;}
        #xiebei a:hover{background:url(${ctxStatic}/xzzs/image/zz/cjcw/xiebei-2.png) no-repeat;}

        #qiaotui{width:213px;height:78px;}
        #qiaotui a:link,#qiaotui a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/zz/cjcw/qiaotui.png) no-repeat;display:block;}
        #qiaotui a:hover{background:url(${ctxStatic}/xzzs/image/zz/cjcw/qiaotui-2.png) no-repeat;}

        #shentui{width:213px;height:78px;}
        #shentui a:link,#shentui a:visited{width:213px;height:78px;background:url(${ctxStatic}/xzzs/image/zz/cjcw/shentui.png) no-repeat;display:block;}
        #shentui a:hover{background:url(${ctxStatic}/xzzs/image/zz/cjcw/shentui-2.png) no-repeat;}
    </style>
</head>
<body>

<div id="content" class="zz-cjcw">
    <div id="list-wb" style="top:44%;left: 50%;width: 650px;">
        <ul>
            <li style="margin-bottom: 9px;"><div id="diaoshouwan"><a href="${ctx}/xzzs/zuozi/cjcw/content?code=dsw" onmouseover="sound()"></a></div></li>
            <li style="margin-right:0px;margin-bottom: 9px;"><div id="pazhuozi"><a href="${ctx}/xzzs/zuozi/cjcw/content?code=pzz" onmouseover="sound()"></a></div></li>

            <li style="margin-left:15px;margin-bottom: 9px;"><div id="zuoyouhengfang"><a href="${ctx}/xzzs/zuozi/cjcw/content?code=zshf" onmouseover="sound()"></a></div></li>
            <li style="margin-right:0px;margin-bottom: 9px;"><div id="zuoyoudaoxie"><a href="${ctx}/xzzs/zuozi/cjcw/content?code=zsdx" onmouseover="sound()"></a></div></li>

            <li style="margin-left:30px;margin-bottom: 9px;"><div id="tuobei"><a href="${ctx}/xzzs/zuozi/cjcw/content?code=tb" onmouseover="sound()"></a></div></li>
            <li style="margin-right:0px;margin-bottom: 9px;"><div id="xiebei"><a href="${ctx}/xzzs/zuozi/cjcw/content?code=xb" onmouseover="sound()"></a></div></li>

            <li style="margin-left:45px;margin-bottom: 9px;"><div id="qiaotui"><a href="${ctx}/xzzs/zuozi/cjcw/content?code=qt" onmouseover="sound()"></a></div></li>
            <li style="margin-right:0px;margin-bottom: 9px;"><div id="shentui"><a href="${ctx}/xzzs/zuozi/cjcw/content?code=st" onmouseover="sound()"></a></div></li>
        </ul>
    </div>
    <div id="bhBtn" style="position:absolute;bottom:42px;right:77px">
        <a href="${ctx}/xzzs/zuozi/index"><img src="${ctxStatic}/shufaketang/images/button/return1.png" class="btnToggle" width="85" height="57" /></a>
    </div>
</div>
</body>
</html>
