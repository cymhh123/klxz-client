<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>书法欣赏</title>
    <script type="text/javascript" src="${ctxStatic}/sfxs/js/jquery.min.js"></script>
    <script type="text/javascript">
        var n1 = "${n1}";
        var n2 = "${n2}";
        var n3 = "${n3}";
        var n4 = "${n4}";
        var n5 = "${n5}";
        var ps1 = "${ps1}";
        var ps2 = "${ps2}";
        var ps3 = "${ps3}";
        var ps4 = "${ps4}";
        var ps5 = "${ps5}";
        var url1 = "${urls1}";
        var url2 = "${urls2}";
        var url3 = "${urls3}";
        var url4 = "${urls4}";
        var url5 = "${urls5}";
        var resUrl = "${resUrl}";
        var ctx = '${ctx}', ctxStatic='${ctxStatic}';
    </script>
    <script type="text/javascript" src="${ctxStatic}/sfxs/js/cutover.js"></script>
    <script type="text/javascript" src="${ctxStatic}/sfxs/js/jquery.mousewheel-3.0.4.pack.js"></script>
    <script type="text/javascript" src="${ctxStatic}/sfxs/js/jquery.fancybox-1.3.2.js"></script>
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/sfxs/css/jquery.fancybox-1.3.2.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/sfxs/css/style.css" />
    <link rel="Shortcut Icon" href="${ctxStatic}/logo.ico">
</head>
<body>
<div class="main">
    <noscript class="no_js">提示：您当前浏览器已禁用javascript脚本！</noscript>
    <div id="content"></div>
    <div id="Layer2">
        <div class="zi5">
            <a class="btn1" href="index.html?id=1">楷书</a>
        </div>
        <div class="zi5">
            <a class="btn2" href="index.html?id=2">行书</a>
        </div>
        <div class="zi5">
            <a class="btn3" href="index.html?id=3">草书</a>
        </div>
        <div class="zi5">
            <a class="btn4" href="index.html?id=4">隶书</a>
        </div>
        <div class="zi5">
            <a class="btn5" href="index.html?id=5">篆书</a>
        </div>
    </div>
    <div id="Layer3">
        <div class="zi6" onMouseOver="playMusic()">
            <a href="${ctx}/courseWord/one?id=${courseWordId}&wordType=fb"><img src="${ctxStatic}/sfxs/imgs/jjsf1.png" onmousemove="this.src='${ctxStatic}/sfxs/imgs/jjsf2.png'" onmouseout="this.src='${ctxStatic}/sfxs/imgs/jjsf1.png'" /></a>
        </div>
        <div class="zi6" onMouseOver="playMusic()">
            <a href="${ctx}/courseWord/one?id=${courseWordId}&wordType=gb"><img src="${ctxStatic}/sfxs/imgs/djyqx1.png" onmousemove="this.src='${ctxStatic}/sfxs/imgs/djyqx2.png'" onmouseout="this.src='${ctxStatic}/sfxs/imgs/djyqx1.png'" /></a>
        </div>
        <div class="zi6" onMouseOver="playMusic()">
            <a href="${ctx}/courseWord/one?id=${courseWordId}&wordType=mb"><img src="${ctxStatic}/sfxs/imgs/sfxs1.png" onmousemove="this.src='${ctxStatic}/sfxs/imgs/sfxs2.png'" onmouseout="this.src='${ctxStatic}/sfxs/imgs/sfxs1.png'" /></a>
        </div>
    </div>
    <div id="Layer4" onMouseOver="playMusic()">
        <a href="${ctx}/courseWord/one?id=${courseWordId}&wordType=rd"><img src="${ctxStatic}/sfxs/imgs/backsp1.png" onmousemove="this.src='${ctxStatic}/sfxs/imgs/backsp2.png'" onmouseout="this.src='${ctxStatic}/sfxs/imgs/backsp1.png'" /></a>
    </div>
    <div id="Layer5">
        <script type="text/javascript">FlashPlay("${ctxStatic}/music/1.swf", 80, 40, "m1");</script>
    </div>
</div>
</body>
</html>
