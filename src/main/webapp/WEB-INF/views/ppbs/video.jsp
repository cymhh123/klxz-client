<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>偏旁部首——小学生书法课堂教学资源库</title>
    <link rel="Shortcut Icon" href="${ctxStatic}/logo.ico">
    <link type="text/css" rel="stylesheet" media="screen" href="${ctxStatic}/css/style.css">
    <script type="text/javascript" src="${ctxStatic}/js/jquery.js"></script>
    <script type="text/javascript" src="${ctxStatic}/js/media.js"></script>
    <script type="text/javascript">
        var ctx = '${ctx}', ctxStatic='${ctxStatic}';
    </script>
</head>
<body>
    <div id="outer" class="page020">
        <div id="inner">
            <div id="spvedio" class="ppbsvedio">
                <script type="text/javascript" charset="utf-8" src="http://yuntv.letv.com/player/vod/bcloud.js"></script>
                <script type="text/javascript">
                    var player = new CloudVodPlayer();
                    player.init({"uu":"${uu80}",
                        "vu":"${bushou.videoUrl}",
                        "pu":"${pu80}",
                        "auto_play":1,
                        "gpcflag":1,
                        "width":560,
                        "height":425,
                        "rate":350,
                        "share":0,
                        "lang":"zh_CN"});
                </script>
            </div>
            <div class="reBslist">
                <a href="${ctx}/ppbs/list?groupCode=${bushou.groupCode}"><img src="${ctxStatic}/image/btn/back.png"></a>
            </div>
        </div>
    </div>
</body>
</html>
