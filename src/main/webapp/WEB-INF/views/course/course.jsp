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
    <script type="text/javascript" src="${ctxStatic}/js/jquery.js"></script>
    <script type="text/javascript" src="${ctxStatic}/js/media.js"></script>
    <script type="text/javascript" src="${ctxStatic}/js/base.js"></script>
    <style type="text/css">
        img, div, a{ _behavior:url("${ctxStatic}/alpha/flashanniu.htc") }
    </style>
</head>
<body>
<div id="outer" class="page006">
    <div id="inner">
        <div id="title">第${course.number}课&nbsp;${course.title}</div>
        <c:choose>
            <c:when test="${fn:length(courseWordList) < 15}">
                <div class="wordlist count6">
                    <c:forEach items="${courseWordList}" var="item">
                        <a href="${ctx}/courseWord/one?id=${item.id}&wordType=rd"><img src="${item.imgUrl}" /></a>&nbsp;
                    </c:forEach>
                </div>
            </c:when>
            <c:otherwise>
                <div class="wordlist2 count16">
                    <c:forEach items="${courseWordList}" var="item">
                        <a href="${ctx}/courseWord/one?id=${item.id}&wordType=rd"><img src="${item.imgUrl}" /></a>&nbsp;
                    </c:forEach>
                </div>
            </c:otherwise>
        </c:choose>

        <div id="coursebtn">
            <a href="${ctx}/course/list?grade=${course.grade}&level=${course.level}"><img src="${ctxStatic}/image/bt.gif" width="60" height="30" /></a>
        </div>
    </div>
</div>
</body>
</html>
