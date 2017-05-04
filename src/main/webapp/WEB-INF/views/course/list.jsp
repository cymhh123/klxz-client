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
        .f_b{ font-weight:bold; }
     <c:if test="${fn:length(keCourse)+fn:length(ziCourse) >= 32}">
        #classList li{line-height:1.44;}
     </c:if>
     <c:if test="${fn:length(keCourse)+fn:length(ziCourse) < 32}">
            #classList li{line-height:1.8;}
     </c:if>
     /*17*/
    </style>
</head>
<body>
<c:if test="${level == 1}">
    <div id="outer" class="page004">
</c:if>
<c:if test="${level == 2}">
    <div id="outer" class="page005">
</c:if>
    <div id="szb">
        <a href="${ctx}/courseWord/word/index?grade=${grade}&level=${level}&version=${version}">
            <img class="btnToggle" src="${ctxStatic}/wordindex/image/szb.png"/>
        </a>
    </div>
    <div id="inner">
        <div id="classList">
                <ul>
                    <c:if test="${keCourse == null || fn:length(keCourse) == 0}">
                        <c:if test="${ziCourse != null && fn:length(ziCourse) > 0}">
                            <li class="f_b">识字</li>
                            <c:forEach items="${ziCourse}" var="item" begin="0" end="${fn:length(ziCourse)/2-1}">
                                <li><a href="${ctx}/courseWord/list?courseId=${item.code}">${item.number}、${item.title}</a></li>
                            </c:forEach>
                        </c:if>
                    </c:if>
                    <c:if test="${keCourse != null && fn:length(keCourse) > 0}">
                        <c:if test="${ziCourse != null && fn:length(ziCourse) > 0}">
                            <li class="f_b">识字</li>
                            <c:forEach items="${ziCourse}" var="item" begin="0" end="${fn:length(ziCourse)/2-1}">
                                <li><a href="${ctx}/courseWord/list?courseId=${item.code}">${item.number}、${item.title}</a></li>
                            </c:forEach>
                            <li class="f_b">课文</li>
                            <c:forEach items="${keCourse}" var="item" begin="0" end="${fn:length(keCourse)/2-1}">
                                <li><a href="${ctx}/courseWord/list?courseId=${item.code}">${item.number}、${item.title}</a></li>
                            </c:forEach>
                        </c:if>
                        <c:if test="${ziCourse == null || fn:length(ziCourse) == 0}">
                            <li class="f_b">课文</li>
                            <c:forEach items="${keCourse}" var="item" begin="0" end="${fn:length(keCourse)/2-1}">
                                <li><a href="${ctx}/courseWord/list?courseId=${item.code}">${item.number}、${item.title}</a></li>
                            </c:forEach>
                        </c:if>
                    </c:if>
                </ul>
            <ul>
                <c:if test="${keCourse == null || fn:length(keCourse) == 0}">
                    <c:if test="${ziCourse != null && fn:length(ziCourse) > fn:length(ziCourse)/2}">
                        <li class="f_b">识字(二)</li>
                        <c:forEach items="${ziCourse}" var="item" begin="${fn:length(ziCourse)/2}">
                            <li><a href="${ctx}/courseWord/list?courseId=${item.code}">${item.number}、${item.title}</a></li>
                        </c:forEach>
                    </c:if>
                </c:if>
                <c:if test="${keCourse != null && fn:length(keCourse) > 0}">
                    <c:if test="${ziCourse != null && fn:length(ziCourse) > fn:length(ziCourse)/2}">
                        <li class="f_b">识字(二)</li>
                        <c:forEach items="${ziCourse}" var="item" begin="${fn:length(ziCourse)/2}">
                            <li><a href="${ctx}/courseWord/list?courseId=${item.code}">${item.number}、${item.title}</a></li>
                        </c:forEach>
                        <c:if test="${keCourse != null && fn:length(keCourse) > fn:length(keCourse)/2}">
                            <li class="f_b">课文</li>
                            <c:forEach items="${keCourse}" var="item" begin="${fn:length(keCourse)/2}">
                                <li><a href="${ctx}/courseWord/list?courseId=${item.code}">${item.number}、${item.title}</a></li>
                            </c:forEach>
                        </c:if>
                    </c:if>
                    <c:if test="${ziCourse == null || fn:length(ziCourse) == 0}">
                        <c:if test="${keCourse != null && fn:length(keCourse) > fn:length(keCourse)/2}">
                            <li class="f_b">课文</li>
                            <c:forEach items="${keCourse}" var="item" begin="${fn:length(keCourse)/2}">
                                <li><a href="${ctx}/courseWord/list?courseId=${item.code}">${item.number}、${item.title}</a></li>
                            </c:forEach>
                        </c:if>
                    </c:if>
                </c:if>
            </ul>
        </div>
        <div class="rtGrade">
            <a href="${ctx}/index"><img src="${ctxStatic}/image/bt.gif" width="53" height="28" /></a>
        </div>
        <div class="njTxt">${grade}年级</div>
        <div class="njTxt ml">册</div>
    </div>
</div>
</body>
</html>
