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
    <script type="text/javascript" src="${ctxStatic}/js/media.js"></script>
    <style type="text/css">
        .cgList a{ width:101px; display:inline-block; margin:0 -3px; }
    </style>
</head>
<body>
<div id="outer" class="page012">
    <div id="inner">
        <h1 id="bh">${strokesList[0].groupName}</h1>

        <div class="cgList">
            <c:forEach items="${strokesList}" var="item">
                <a href="${ctx}/strokes/one?id=${item.id}&videoType=fb">
                    <span class="txt">${item.title}</span>
                    <img src="${item.imgUrl}" width="82" height="82" />
                </a>
            </c:forEach>
        </div>
        <div id="bhBtn" style="position:absolute;bottom:48px;right:44px">
            <a href="${ctx}/strokes/index"><img src="${ctxStatic}/shufaketang/images/button/return1.png" class="btnToggle" width="85" height="57" /></a>
        </div>>
    </div>
</div>
</body>
</html>
