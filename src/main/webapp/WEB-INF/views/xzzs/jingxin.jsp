<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>写字姿势—静心</title>
    <link rel="Shortcut Icon" href="${ctxStatic}/logo.ico">
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/xzzs/style.css" />
    <script type="text/javascript" src="${ctxStatic}/js/jquery.js"></script>
    <style type="text/css">
        img{ _behavior:url("${ctxStatic}/alpha/flashanniu.htc") }
    </style>
</head>
<body>
<div id="content" class="jingxin">
    <div id="spvedio" class="wbzd-shipin">
        <script type="text/javascript" charset="utf-8" src="http://yuntv.letv.com/player/vod/bcloud.js"></script>
        <script type="text/javascript">
            var player = new CloudVodPlayer();
            player.init({"uu":"${uu80}",
                "vu":"${xzzs.videoUrl}",
                "pu":"${pu80}",
                "auto_play":1,
                "gpcflag":1,
                "width":515,
                "height":398,
                "rate":350,
                "share":0,
                "lang":"zh_CN"});
        </script>
    </div>
    <div id="bhBtn" style="position:absolute;bottom:25px;right:119px">
        <a href="${ctx}/xzzs/index"><img src="${ctxStatic}/shufaketang/images/button/return1.png" class="btnToggle" width="85" height="57" /></a>
    </div>
</div>
</body>
</html>
