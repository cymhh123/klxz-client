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
    <style type="text/css">
        img{ _behavior:url("${ctxStatic}/alpha/flashanniu.htc"); }
    </style>
    <script type="text/javascript">
        var ctx = '${ctx}', ctxStatic='${ctxStatic}';
    </script>
</head>
<body>
<div id="main">
    <div class="wrap">
        <!--导航-->
        <div class="kwIndex" id="listWrap">
            <div class="kwTitle">第${calligraphy.number}讲 ${calligraphy.title}</div>
            <c:choose>
                <c:when test="${fn:length(list) < 6 }">
                    <div class="kwList l4 clearfix">
                </c:when>
                <c:when test="fn:length(list) < 8 }">
                    <div class="kwList l6 clearfix">
                </c:when>
                <c:otherwise>
                    <div class="kwList l7 clearfix">
                </c:otherwise>
            </c:choose>
                <ul id="btnPlays">
                    <c:forEach items="${list}" var="item">
                        <li videoUrl="${item.videoUrl}">
                            <a href="${ctx}/sfkt/lession/one?calligraphyId=${calligraphy.code}&id=${item.id}">第${item.number}节 ${item.title}</a>
                            <span style="margin-left: 10px;color:#f08300">
                                （${item.times}分钟）
                            </span>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="kwReturn">
                <a href="${ctx}/sfkt/list?grade=${calligraphy.grade}&level=${calligraphy.level}"><img src="${ctxStatic}/shufaketang/images/button/return1.png" class="btnToggle" width="85" height="57" /></a>
            </div>
        </div>
        <!--视频-->
        <%--<div class="kwVideo" id="videoWrap">--%>
            <%--<div class="videoBox">--%>
                <%--<div id="videoBox"></div>--%>
            <%--</div>--%>
            <%--<div class="kwReturn">--%>
                <%--<a href="${ctx}/sfkt/list?grade=${calligraphy.grade}&level=${calligraphy.level}" onmouseover='btnSound("3")'><img src="${ctxStatic}/shufaketang/images/button/kwrBtn1.png" class="btnToggle" width="38" height="78" /></a>--%>
            <%--</div>--%>
        <%--</div>--%>
    </div>
</div>
<%--<script type="text/javascript" src="${ctxStatic}/shufaketang/js/jquery.js"></script>--%>
<%--<script type="text/javascript" src="${ctxStatic}/shufaketang/js/base.js"></script>--%>
<%--<script type="text/javascript" src="${ctxStatic}/ckplayer/ckplayer.js" charset="utf-8"></script>--%>
<%--<script type="text/javascript" src="${ctxStatic}/shufaketang/js/video.js"></script>--%>
<%--<script type="text/javascript" src="${ctxStatic}/shufaketang/js/lesson.js"></script>--%>

</body>
</html>
