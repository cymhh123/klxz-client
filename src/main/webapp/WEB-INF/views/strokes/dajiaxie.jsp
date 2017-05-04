<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>基本笔画——小学生书法课堂教学资源库</title>
    <link rel="Shortcut Icon" href="${ctxStatic}/logo.ico">
    <link type="text/css" rel="stylesheet" media="screen" href="${ctxStatic}/css/style.css">
    <script type="text/javascript" src="${ctxStatic}/js/jquery.js"></script>
    <script type="text/javascript">var soundSrc = "${ctxStatic}/alpha/botton.wav";</script>
    <script type="text/javascript" src="${ctxStatic}/js/media.js"></script>
    <script type="text/javascript" src="${ctxStatic}/js/base.js"></script>
    <style type="text/css">
        img, div, a{ _behavior:url("${ctxStatic}/alpha/flashanniu.htc") }
    </style>
</head>
<body>
<bgsound src="${ctxStatic}/music/music.mp3" />
<div id="outer" class="page014">
    <div id="inner">
        <div class="bhtp">
            <img src="${strokes.dajiaxieUrl}" />
        </div>
        <div id="jbbhan">
            <a class="btn" href="${ctx}/strokes/one?id=${item.id}&videoType=fb" onMouseOver="flash()"><img class="btnToggle" src="${ctxStatic}/image/jbbh/fbsp1.png" /></a>
            <a class="btn" href="${ctx}/strokes/one?id=${item.id}&videoType=gb" onMouseOver="flash()"><img class="btnToggle" src="${ctxStatic}/image/jbbh/gbsp1.png" /></a>
            <a class="btn" href="${ctx}/strokes/one?id=${item.id}&videoType=mb" onMouseOver="flash()"><img class="btnToggle" src="${ctxStatic}/image/jbbh/mbsp1.png" /></a>
        </div>
        <div id="mobtn">
            <div class="re_60">
                <a href="${ctx}/strokes/list?groupCode=${strokes.groupCode}" onmouseover="flash()"></a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
