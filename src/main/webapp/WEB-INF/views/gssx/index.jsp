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
<div id="outer" class="page010">
    <div id="inner">
        <div class="cgList gs">
            <div>
                <span class="item"><a href="${ctx}/gssx/list?grade=1"><img src="${ctxStatic}/image/gssx/yi1.png"></a></span>
                <span class="item"><a href="${ctx}/gssx/list?grade=2"><img src="${ctxStatic}/image/gssx/er1.png"></a></span>
                <span class="item"><a href="${ctx}/gssx/list?grade=3"><img src="${ctxStatic}/image/gssx/san1.png"></a></span>
            </div>
            <div>
                <span class="item"><a href="${ctx}/gssx/list?grade=4"><img src="${ctxStatic}/image/gssx/si1.png"></a></span>
                <span class="item"><a href="${ctx}/gssx/list?grade=5"><img src="${ctxStatic}/image/gssx/wu1.png"></a></span>
                <span class="item"><a href="${ctx}/gssx/list?grade=6"><img src="${ctxStatic}/image/gssx/liu1.png"></a></span>
                <span class="item"><a href="${ctx}/hardpen/index"><img src="${ctxStatic}/image/gssx/yingbi1.png"></a></span>
            </div>
        </div>
        <div id="bhBtn" style="right: 52px">
            <a href="${ctx}/index"><img src="${ctxStatic}/image/btn/back.png"></a>
        </div>
    </div>
</div>
</body>
<script>
    $(function () {
        $("img").mouseover(function () {
            var src = $(this).attr("src");
            var start = src.lastIndexOf("/");
            var prefix = src.substring(0,start);
            var end = src.substring(start);
            $(this).attr("src",prefix + end.replace("1","2"));
        });
        $("img").mouseout(function () {
            var src = $(this).attr("src");
            var start = src.lastIndexOf("/");
            var prefix = src.substring(0,start);
            var end = src.substring(start);
            $(this).attr("src",prefix + end.replace("2","1"));
        });
    })
</script>
</html>
