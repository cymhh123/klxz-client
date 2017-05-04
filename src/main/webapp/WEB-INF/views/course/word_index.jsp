<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>生字词</title>
    <script type="text/javascript" src="${ctxStatic}/sfxs/js/jquery.min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/sfxs/js/jquery.mousewheel-3.0.4.pack.js"></script>
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/sfxs/css/style2.css" />
    <link href="${ctxStatic}/wordindex/style/index.css" rel="stylesheet" media="screen" type="text/css" />
    <script type="text/javascript" src="${ctxStatic}/wordindex/js/common.js"></script>
    <link rel="Shortcut Icon" href="${ctxStatic}/logo.ico">
</head>
<body>
<div class="main">
    <noscript class="no_js">提示：您当前浏览器已禁用javascript脚本！</noscript>
    <div id="content">
        <c:forEach items="${wordIndexList}" var="wordIndex">
            <dl>
                <dt class="g_title">${wordIndex.index}</dt>
                <dd>
                    <c:forEach items="${wordIndex.wordList}" var="word">
                        <a href="${ctx}/courseWord/one?id=${word.id}&wordType=rd&flag=wordIndex&grade=${param.grade}&level=${param.level}&version=${param.version}" class="a_item">
                            <img src="${word.imgUrl}"/>
                        </a>
                    </c:forEach>
                </dd>
            </dl>
        </c:forEach>
    </div>
    <div id="Layer2">
        <div class="pinyin border">
            <div class="pinyin_c">
                <div class="pinyin_c_t">
                    <ul>
                        <li><a href="#" class="hover" onMouseOver="set('pinyin','${wordIndexList[0].indexNum}',26)" id="pinyin${wordIndexList[0].indexNum}">${wordIndexList[0].index}</a></li>
                    </ul>
                    <ul>
                        <c:forEach items="${wordIndexList}" var="wordIndex" begin="1">
                            <li><a href="#" onMouseOver="set('pinyin','${wordIndex.indexNum}',26)" id="pinyin${wordIndex.indexNum}">${wordIndex.index}</a></li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="pinyin_c_b">
                    <div id="conpinyin${wordIndexList[0].indexNum}">
                        <c:forEach items="${wordIndexList[0].wordList}" var="word">
                            <a href="${ctx}/courseWord/one?id=${word.id}&wordType=rd&flag=wordIndex&grade=${param.grade}&level=${param.level}&version=${param.version}" class="a_item">
                                <img src="${word.imgUrl}" style="width: 30px;height: 30px;"/>
                            </a>
                        </c:forEach>
                    </div>
                    <c:forEach items="${wordIndexList}" var="wordIndex" begin="1">
                        <div id="conpinyin${wordIndex.indexNum}" class="none">
                            <c:forEach items="${wordIndex.wordList}" var="word">
                                <a href="${ctx}/courseWord/one?id=${word.id}&wordType=rd&flag=wordIndex&grade=${param.grade}&level=${param.level}&version=${param.version}" class="a_item">
                                    <img src="${word.imgUrl}" style="width: 30px;height: 30px;"/>
                                </a>
                            </c:forEach>
                        </div>
                    </c:forEach>
                </div>
                <div class="cl"></div>
            </div>
            <div class="cl"></div>
        </div>
    </div>
    <div id="Layer4">
        <a href="${ctx}/course/list?grade=${grade}&level=${level}"><img src="${ctxStatic}/sfxs/imgs/backsp1.png" onmousemove="this.src='${ctxStatic}/sfxs/imgs/backsp2.png'" onmouseout="this.src='${ctxStatic}/sfxs/imgs/backsp1.png'" /></a>
    </div>
</div>
</body>
</html>
