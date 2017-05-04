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
    <script type="text/javascript">var soundSrc = "${ctxStatic}/alpha/botton.wav";</script>
    <script type="text/javascript" src="${ctxStatic}/js/jquery.js"></script>
    <script type="text/javascript" src="${ctxStatic}/js/media.js"></script>
</head>
<body>
<div id="outer" class="page008">
    <div id="inner">
        <div class="cgList">
            <div>
                <span class="item">
                    <a href="${ctx}/ppbs/list?groupCode=zt"><img src="${ctxStatic}/image/ppbs/zitou1.png"></a>
                </span>
                <span class="item">
                    <a href="${ctx}/ppbs/list?groupCode=zd"><img src="${ctxStatic}/image/ppbs/zidi1.png"></a>
                </span>
                <span class="item">
                    <a href="${ctx}/ppbs/list?groupCode=bw"><img src="${ctxStatic}/image/ppbs/baowei1.png"></a>
                </span>
            </div>
            <div>
                <span class="item">
                    <a href="${ctx}/ppbs/list?groupCode=zpp"><img src="${ctxStatic}/image/ppbs/zuopianpang1.png"></a>
                </span>
                <span class="item">
                    <a href="${ctx}/ppbs/list?groupCode=ypp"><img src="${ctxStatic}/image/ppbs/youpianpang1.png"></a>
                </span>
            </div>
        </div>
        <div id="bhBtn">
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
