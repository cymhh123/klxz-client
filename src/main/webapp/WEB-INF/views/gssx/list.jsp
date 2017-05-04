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
    <script type="text/javascript" src="${ctxStatic}/js/jquery.js"></script>
    <script type="text/javascript" src="${ctxStatic}/js/media.js"></script>
</head>
<body>
<c:choose>
    <c:when test="${grade=='1'}">
        <div id="outer" class="page026">
    </c:when>
    <c:when test="${grade=='2'}">
        <div id="outer" class="page_gssx2">
    </c:when>
    <c:when test="${grade=='3'}">
        <div id="outer" class="page_gssx3">
    </c:when>
    <c:when test="${grade=='4'}">
        <div id="outer" class="page_gssx4">
    </c:when>
    <c:when test="${grade=='5'}">
        <div id="outer" class="page_gssx5">
    </c:when>
    <c:when test="${grade=='6'}">
        <div id="outer" class="page_gssx6">
    </c:when>
</c:choose>
    <div id="inner">
        <div class="gslist">
            <ul>
                <c:forEach items="${list}" var="item">
                    <li><a href="${ctx}/gssx/one?id=${item.id}">${item.number}、${item.title}</a></li>
                </c:forEach>
            </ul>
        </div>
        <div id="bhBtn" style="bottom:50px;right:52px">
            <a href="${ctx}/gssx/index"><img src="${ctxStatic}/image/btn/back.png"></a>
        </div>
    </div>
</div>
</body>
</html>
