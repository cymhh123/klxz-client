<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>古诗书写——小学生书法课堂教学资源库</title>
    <link rel="Shortcut Icon" href="${ctxStatic}/logo.ico">
    <link type="text/css" rel="stylesheet" media="screen" href="${ctxStatic}/css/style.css">
    <script type="text/javascript">var soundSrc = "${ctxStatic}/alpha/botton.wav";</script>
    <script type="text/javascript" src="${ctxStatic}/js/jquery.js"></script>
    <script type="text/javascript" src="${ctxStatic}/js/media.js"></script>
    <style type="text/css">
        img, div, a{ _behavior:url("${ctxStatic}/alpha/flashanniu.htc") }
    </style>
    <script type="text/javascript">
        var ctx = '${ctx}', ctxStatic='${ctxStatic}';
    </script>
</head>

<body>
<div id="outer" class="page032 gssx">
    <div id="inner">
        <div id="spvedio" class="bhVedio">
            <script type="text/javascript" charset="utf-8" src="http://yuntv.letv.com/player/vod/bcloud.js"></script>
            <script type="text/javascript">
                var player = new CloudVodPlayer();
                player.init({"uu":"${uu80}",
                    "vu":"${poemItem.videoUrl}",
                    "pu":"${pu80}",
                    "auto_play":1,
                    "gpcflag":1,
                    "width":430,
                    "height":380,
                    "rate":350,
                    "share":0,
                    "lang":"zh_CN"});
            </script>
        </div>
        <div id="bhBtn" style="bottom:200px;right:30px">
            <a href="${ctx}/gssx/byCode?code=${poemItem.poemId}"><img src="${ctxStatic}/image/btn/back.png"></a>
        </div>
        <div id="gspicone"><img src="${poemItem.imgUrl}" height="120" /></div>
    </div>
</div>
</body>
</html>
