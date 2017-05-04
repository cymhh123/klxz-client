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
</head>

<body>
<c:choose>
    <c:when test="${groupCode eq 'zt'}">
        <div id="outer" class="page_zt">
    </c:when>
    <c:when test="${groupCode eq 'ypp'}">
        <div id="outer" class="page_ypp">
    </c:when>
    <c:when test="${groupCode eq 'zpp'}">
        <div id="outer" class="page_zpp">
    </c:when>
    <c:when test="${groupCode eq 'bw'}">
        <div id="outer" class="page_bw">
    </c:when>
    <c:when test="${groupCode eq 'zd'}">
        <div id="outer" class="page_zd">
    </c:when>
</c:choose>
    <div id="inner" class="ppbs">
        <c:choose>
            <c:when test="${groupCode eq 'zpp'}">
                <div class="cgList" style="top:180px;">
             </c:when>
              <c:when test="${groupCode eq 'zd'}">
                 <div class="cgList" style="top:180px;">
              </c:when>
              <c:otherwise>
                 <div class="cgList" style="top:210px;">
              </c:otherwise>
         </c:choose>
            <div style="padding: 0px 10px">
                <c:forEach items="${list}" var="item">
                    <span class="item"><a href="${ctx}/ppbs/one?id=${item.id}"><img src="${item.imgUrl}" /></a></span>
                </c:forEach>
            </div>
        </div>
        <div id="bhBtn" style="bottom: 50px;right: 53px">
            <a href="${ctx}/ppbs/index"><img src="${ctxStatic}/image/btn/back.png"></a>
        </div>
    </div>
</div>
</body>
</html>
