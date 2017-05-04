<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>硬笔作品——小学生书法课堂教学资源库</title>
    <link rel="Shortcut Icon" href="${ctxStatic}/logo.ico">
    <link type="text/css" rel="stylesheet" media="screen" href="${ctxStatic}/css/style.css">
    <script type="text/javascript" src="${ctxStatic}/js/jquery.js"></script>
    <script type="text/javascript">var soundSrc = "${ctxStatic}/alpha/botton.wav";</script>
    <script type="text/javascript" src="${ctxStatic}/js/media.js"></script>
    <script type="text/javascript" src="${ctxStatic}/js/base.js"></script>
    <style type="text/css">
        img, div, a{ _behavior:url("${ctxStatic}/alpha/flashanniu.htc") }
    </style>
    <script type="text/javascript">
        var ctx = '${ctx}', ctxStatic='${ctxStatic}';
    </script>
</head>
<body>
<div id="outer" class="page013">
    <div id="inner">
        <div class="titBhjj">硬笔作品</div>
        <div class="diagram">
            <span class="txt" style="font-size: 30px;font-weight: bold">${hardpen.title}</span>
            <p style="width: 190px;word-wrap:break-word; word-break:normal;font-size: 20px;margin-top: 10px;">${hardpen.note}</p>
        </div>
        <div id="spvedio" class="bhVedio">
            <script type="text/javascript" charset="utf-8" src="http://yuntv.letv.com/player/vod/bcloud.js"></script>
            <script type="text/javascript">
                var player = new CloudVodPlayer();
                player.init({"uu":"${uu80}",
                    "vu":"${hardpen.videoUrl}",
                    "pu":"${pu80}",
                    "auto_play":1,
                    "gpcflag":1,
                    "width":455,
                    "height":385,
                    "rate":350,
                    "share":0,
                    "lang":"zh_CN"});
            </script>
        </div>
        <div id="jbbhan">
            <a class="btn" href="${ctx}/hardpen/one?code=hengfu" onMouseOver="flash()"><img class="btnToggle" src="${ctxStatic}/hardpen/info/hengfu1.png" /></a>
            <a class="btn" href="${ctx}/hardpen/one?code=tiaofu" onMouseOver="flash()"><img class="btnToggle" src="${ctxStatic}/hardpen/info/tiaofu1.png" /></a>
            <a class="btn" href="${ctx}/hardpen/one?code=duilian" onMouseOver="flash()"><img class="btnToggle" src="${ctxStatic}/hardpen/info/duilian1.png" /></a>
            <a class="btn" href="${ctx}/hardpen/one?code=shanmian" onMouseOver="flash()"><img class="btnToggle" src="${ctxStatic}/hardpen/info/shanmian1.png" /></a>
        </div>
        <div id="mobtn">
            <div class="re_60">
                <a href="${ctx}/hardpen/index" onmouseover="flash()"></a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
