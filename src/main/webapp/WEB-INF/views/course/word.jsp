<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>小学生书法课堂教学资源库</title>
    <link rel="Shortcut Icon" href="${ctxStatic}/logo.ico">
    <link type="text/css" rel="stylesheet" media="screen" href="${ctxStatic}/css/style.css">
    <script type="text/javascript">var soundSrc = "${ctxStatic}/alpha/botton.wav";</script>
    <script type="text/javascript" src="${ctxStatic}/js/jquery.js"></script>
    <script type="text/javascript" src="${ctxStatic}/js/media.js"></script>
    <script type="text/javascript" src="${ctxStatic}/js/base.js"></script>
    <style type="text/css">
        img, div, a{ _behavior: url("${ctxStatic}/alpha/flashanniu.htc") }
    </style>
    <script type="text/javascript">
        var ctx = '${ctx}', ctxStatic='${ctxStatic}';
    </script>
    <script type="text/javascript" src="${ctxStatic}/swfobject.js"></script>
    <script type="text/javascript">
        swfobject.registerObject("myId", "9.0.0", "${ctxStatic}/expressInstall.swf");
    </script>
</head>
<body>
<div id="shubiao">
    <c:choose>
        <c:when test="${wordType eq 'fb'}">
            <div id="outer" class="page101">
        </c:when>
        <c:when test="${wordType eq 'gb'}">
            <div id="outer" class="page102">
        </c:when>
        <c:when test="${wordType eq 'mb'}">
            <div id="outer" class="page103">
        </c:when>
         <c:when test="${wordType eq 'qb'}">
            <div id="outer" class="page102">
         </c:when>
        <c:when test="${wordType eq 'rd'}">
            <div id="outer" class="page100">
        </c:when>
    </c:choose>
        <div id="inner">
            <!-- 新版背景音乐2 -->
            <div id="bg_music">
                <script type="text/javascript">FlashPlay("${ctxStatic}/music/2.swf",160,150,"m2");</script>
            </div>
            <!--书法字典-->
            <div id="btn_sfzd" onmouseover="flash()"><a href="${ctx}/calligraphy/word/list?zi=${courseWord.zi}&courseWordId=${courseWord.id}"><img class="btnToggle" src="${ctxStatic}/image/mbxs1.png"></a></div>
            <c:if test="${wordType eq 'rd'}">
                <div id="rdpinyin">${courseWord.pinyin}</div>
            </c:if>
            <div id="bushou">${courseWord.bushou}部</div>
            <c:set value="${ fn:split(courseWord.zuci,',') }" var="zucis" />
            <c:choose>
                <c:when test="${fn:length(zucis) > 3}">
                    <div id="zuci">
                        <c:forEach items="${ zucis }" var="item">
                            <p>${item}</p>
                        </c:forEach>
                    </div>
                </c:when>
                <c:otherwise>
                    <div id="zuci2">
                        <c:forEach items="${ zucis }" var="item">
                            <p>${item}</p>
                        </c:forEach>
                    </div>
                </c:otherwise>
            </c:choose>
            <div id="duyidu">${courseWord.structure}</div>
            <c:choose>
                <c:when test="${wordType eq 'fb'}">
                    <div class="vedioBox">
                        <script type="text/javascript" charset="utf-8" src="http://yuntv.letv.com/player/vod/bcloud.js"></script>
                        <script type="text/javascript">
                            var player = new CloudVodPlayer();
                            player.init({"uu":"${uu80}",
                                "vu":"${courseWord.bsVideoUrl}",
                                "pu":"${pu80}",
                                "auto_play":1,
                                "gpcflag":1,
                                "width":380,
                                "height":330,
                                "rate":350,
                                "share":0,
                                "align":"middle",
                                "lang":"zh_CN"});
                        </script>
                    </div>
                </c:when>
                <c:when test="${wordType eq 'gb'}">
                    <div class="vedioBox">
                        <script type="text/javascript" charset="utf-8" src="http://yuntv.letv.com/player/vod/bcloud.js"></script>
                        <script type="text/javascript">
                            var player = new CloudVodPlayer();
                            player.init({"uu":"${uu80}",
                                "vu":"${courseWord.gbVideoUrl}",
                                "pu":"${pu80}",
                                "auto_play":1,
                                "gpcflag":1,
                                "width":380,
                                "height":330,
                                "rate":350,
                                "share":0,
                                "align":"middle",
                                "lang":"zh_CN"});
                        </script>
                    </div>
                </c:when>
                <c:when test="${wordType eq 'mb'}">
                    <div class="vedioBox">
                        <script type="text/javascript" charset="utf-8" src="http://yuntv.letv.com/player/vod/bcloud.js"></script>
                        <script type="text/javascript">
                            var player = new CloudVodPlayer();
                            player.init({"uu":"${uu80}",
                                "vu":"${courseWord.mbVideoUrl}",
                                "pu":"${pu80}",
                                "auto_play":1,
                                "gpcflag":1,
                                "width":380,
                                "height":330,
                                "rate":350,
                                "share":0,
                                "align":"middle",
                                "lang":"zh_CN"});
                        </script>
                    </div>
                </c:when>
                <c:when test="${wordType eq 'qb'}">
                    <div class="vedioBox">
                        <script type="text/javascript" charset="utf-8" src="http://yuntv.letv.com/player/vod/bcloud.js"></script>
                        <script type="text/javascript">
                            var player = new CloudVodPlayer();
                            player.init({"uu":"${uu80}",
                                "vu":"${courseWord.qbVideoUrl}",
                                "pu":"${pu80}",
                                "auto_play":1,
                                "gpcflag":1,
                                "width":380,
                                "height":330,
                                "rate":350,
                                "share":0,
                                "lang":"zh_CN"});
                        </script>
                    </div>
                </c:when>
                <c:when test="${wordType eq 'rd'}">
                    <div id="flash1">
                        <object id="myId" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="360" height="360">
                            <param name="movie" value="${courseWord.rdUrl}" />
                            <!--[if !IE]>-->
                            <object type="application/x-shockwave-flash" data="${courseWord.rdUrl}" width="360" height="360">
                                <!--<![endif]-->
                                <div>
                                    <h1>请点击下面图标安装flash插件</h1>
                                    <p><a href="http://www.adobe.com/go/getflashplayer"><img src="${ctxStatic}/image/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>
                                </div>
                                <!--[if !IE]>-->
                            </object>
                            <!--<![endif]-->
                        </object>
                    </div>
                </c:when>
            </c:choose>
            <div id="botNav">
                <ul>
                    <li>
                        <div id="jjsf" onMouseOver="flash()"><a href="${ctx}/courseWord/one?id=${courseWord.id}&wordType=fb&flag=${param.flag}&grade=${param.grade}&level=${param.level}&version=${param.version}"><img src="${ctxStatic}/image/jjsf1.png" class="btnToggle" width="136" height="51" /></a></div>
                    </li>
                    <c:choose>
                        <c:when test="${not empty courseWord.qbVideoUrl}">
                            <li>
                                <div id="djyqx" onMouseOver="flash()"><a href="${ctx}/courseWord/one?id=${courseWord.id}&wordType=qb&flag=${param.flag}&grade=${param.grade}&level=${param.level}&version=${param.version}"><img src="${ctxStatic}/image/qbsx1.png" class="btnToggle" width="136" height="51" /></a></div>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li>
                                <div id="djyqx" onMouseOver="flash()"><a href="${ctx}/courseWord/one?id=${courseWord.id}&wordType=gb&flag=${param.flag}&grade=${param.grade}&level=${param.level}&version=${param.version}"><img src="${ctxStatic}/image/djyqx1.png" class="btnToggle" width="136" height="51" /></a></div>
                            </li>
                        </c:otherwise>
                    </c:choose>
                    <li>
                        <div id="sfxs" onMouseOver="flash()"><a href="${ctx}/courseWord/one?id=${courseWord.id}&wordType=mb&flag=${param.flag}&grade=${param.grade}&level=${param.level}&version=${param.version}"><img src="${ctxStatic}/image/sfxs1.png" class="btnToggle" width="136" height="51" /></a></div>
                    </li>
                </ul>
            </div>
            <div id="backrd">
                <c:choose>
                    <c:when test="${param.flag eq 'wordIndex'}">
                        <div id="backsp" onMouseOver="flash()"><a href="${ctx}/courseWord/word/index?grade=${param.grade}&level=${param.level}&version=${param.version}"><img src="${ctxStatic}/image/backsp1.png" class="btnToggle" width="60" height="40" /></a></div>
                    </c:when>
                    <c:when test="${param.flag eq 'cx'}">
                        <div id="backsp" onMouseOver="flash()"><a href="${ctx}/index"><img src="${ctxStatic}/image/backsp1.png" class="btnToggle" width="60" height="40" /></a></div>
                    </c:when>
                    <c:otherwise>
                        <div id="backsp" onMouseOver="flash()"><a href="${ctx}/courseWord/list?courseId=${courseWord.courseCode}"><img src="${ctxStatic}/image/backsp1.png" class="btnToggle" width="60" height="40" /></a></div>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</div>
</body>
</html>
