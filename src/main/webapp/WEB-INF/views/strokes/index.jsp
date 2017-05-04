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
    <script type="text/javascript">var soundSrc = "${ctxStatic}/alpha/botton.wav";</script>
    <script type="text/javascript" src="${ctxStatic}/js/jquery.js"></script>
    <script type="text/javascript" src="${ctxStatic}/js/media.js"></script>
    <script type="text/javascript">
        var ctx = '${ctx}', ctxStatic='${ctxStatic}';
    </script>
</head>

<body>
<div id="outer" class="page007">
    <div id="inner">
        <div class="cgList" style="top:225px;">
            <div>
                <span class="item">
                    <a href="${ctx}/strokes/list?groupCode=heng"><img src="${ctxStatic}/image/jbbh/heng1.png"/></a>
                </span>
                <span class="item">
                    <a href="${ctx}/strokes/list?groupCode=shu"><img src="${ctxStatic}/image/jbbh/shu1.png"/></a>
                </span>
                <span class="item"><a href="${ctx}/strokes/list?groupCode=pie"><img src="${ctxStatic}/image/jbbh/pie1.png"/></a></span>
                <span class="item"><a href="${ctx}/strokes/list?groupCode=na"><img src="${ctxStatic}/image/jbbh/na1.png"/></a></span>
            </div>
            <div>
                <span class="item"><a href="${ctx}/strokes/list?groupCode=dian"><img src="${ctxStatic}/image/jbbh/dian1.png"/></a></span>
                <span class="item"><a href="${ctx}/strokes/list?groupCode=ti"><img src="${ctxStatic}/image/jbbh/ti1.png"/></a></span>
                <span class="item"><a href="${ctx}/strokes/list?groupCode=zhe"><img src="${ctxStatic}/image/jbbh/zhe1.png"/></a></span>
                <span class="item"><a href="${ctx}/strokes/list?groupCode=gou"><img src="${ctxStatic}/image/jbbh/gou1.png"/></a></span>
            </div>
        </div>
        <div id="bhBtn" style="position:absolute;bottom:54px;right:44px">
            <a href="${ctx}/index"><img src="${ctxStatic}/shufaketang/images/button/return1.png" class="btnToggle" width="85" height="57" /></a>
        </div>
    </div>
</div>
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
</body>
</html>
