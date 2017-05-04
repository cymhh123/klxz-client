<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>小学生书法基础课堂</title>
    <link rel="Shortcut Icon" href="${ctxStatic}/logo.ico">
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/shufaketang/css/base.css" />
    <script type="text/javascript">
        var ctx = '${ctx}', ctxStatic='${ctxStatic}';
    </script>
</head>
<body>
<div id="main">
    <div class="wrap">
        <!--视频-->
        <div class="kwVideo" id="videoWrap">
            <div class="videoBox">
                <script type="text/javascript" charset="utf-8" src="http://yuntv.letv.com/player/vod/bcloud.js"></script>
                <script type="text/javascript">
                    var player = new CloudVodPlayer();
                    player.init({"uu":"${uu100}",
                        "vu":"${lession.videoUrl}",
                        "pu":"${pu100}",
                        "auto_play":1,
                        "gpcflag":1,
                        "width":577,
                        "height":473,
                        "rate":350,
                        "share":0,
                        "lang":"zh_CN"});
                </script>
            </div>
            <div class="kwReturn">
                <a href="${ctx}/sfkt/lession/list?calligraphyId=${calligraphy.code}"><img src="${ctxStatic}/shufaketang/images/button/kwrBtn1.png" class="btnToggle" width="38" height="78" /></a>
            </div>
        </div>
    </div>
</div>

</body>
</html>
