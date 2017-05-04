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
    <script type="text/javascript">
        var ctx = '${ctx}', ctxStatic='${ctxStatic}';
    </script>
</head>
<body>
<bgsound src="${ctxStatic}/music/music.mp3" />
<div id="outer" class="page013">
    <div id="inner">
        <div class="titBhjj">笔画讲解</div>
        <div class="diagram">
            <span class="txt">${strokes.note}</span>
            <img src="${strokes.contentUrl}" width="190" height="190" />
        </div>
        <dl class="bhBzjj">
            <dt>形态特征</dt>
            <c:set value="${ fn:split(strokes.feature,',') }" var="features" />
            <c:forEach items="${ features }" var="item">
                <dt>${item}</dt>
            </c:forEach>
        </dl>
        <c:choose>
            <c:when test="${videoType eq 'fb'}">
                <div id="spvedio" class="bhVedio">
                    <script type="text/javascript" charset="utf-8" src="http://yuntv.letv.com/player/vod/bcloud.js"></script>
                    <script type="text/javascript">
                        var player = new CloudVodPlayer();
                        player.init({"uu":"${uu80}",
                            "vu":"${strokes.fbVideoUrl}",
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
            </c:when>
            <c:when test="${videoType eq 'gb'}">
                <div id="spvedio" class="bhVedio">
                    <script type="text/javascript" charset="utf-8" src="http://yuntv.letv.com/player/vod/bcloud.js"></script>
                    <script type="text/javascript">
                        var player = new CloudVodPlayer();
                        player.init({"uu":"${uu80}",
                            "vu":"${strokes.gbVideoUrl}",
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
            </c:when>
            <c:when test="${videoType eq 'mb'}">
                <div id="spvedio" class="bhVedio">
                    <script type="text/javascript" charset="utf-8" src="http://yuntv.letv.com/player/vod/bcloud.js"></script>
                    <script type="text/javascript">
                        var player = new CloudVodPlayer();
                        player.init({"uu":"${uu80}",
                            "vu":"${strokes.mbVideoUrl}",
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
            </c:when>
        </c:choose>
        <c:choose>
            <c:when test="${strokes.flag eq '2'}">
                <div id="jbbhan">
                    <a class="btn" href="${ctx}/strokes/one?id=${strokes.id}&videoType=fb" onMouseOver="flash()"><img class="btnToggle" src="${ctxStatic}/image/jbbh/fbsp1.png" /></a>
                    <a class="btn" href="${ctx}/strokes/one?id=${strokes.id}&videoType=gb" onMouseOver="flash()"><img class="btnToggle" src="${ctxStatic}/image/jbbh/gbsp1.png" /></a>
                    <a class="btn" href="${ctx}/strokes/one?id=${strokes.id}&videoType=mb" onMouseOver="flash()"><img class="btnToggle" src="${ctxStatic}/image/jbbh/mbsp1.png" /></a>
                </div>
            </c:when>
            <c:when test="${strokes.flag eq '1'}">
                <div id="jbbhan">
                    <a class="btn" href="${ctx}/strokes/one?id=${strokes.id}&videoType=fb" onMouseOver="flash()"><img class="btnToggle" src="${ctxStatic}/image/jbbh/bhjj1.jpg" /></a>
                    <a class="btn" href="${ctx}/strokes/one?id=${strokes.id}&videoType=gb" onMouseOver="flash()"><img class="btnToggle" src="${ctxStatic}/image/jbbh/fzjj1.jpg" /></a>
                    <a class="btn" href="${ctx}/strokes/one?id=${strokes.id}&videoType=mb" onMouseOver="flash()"><img class="btnToggle" src="${ctxStatic}/image/jbbh/ssc1.jpg" /></a>
                </div>
            </c:when>
        </c:choose>

        <div id="mobtn">
            <div class="re_60">
                <a href="${ctx}/strokes/list?groupCode=${strokes.groupCode}" onmouseover="flash()"></a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
