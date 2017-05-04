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
    <script type="text/javascript">var soundSrc = "${ctxStatic}/alpha/botton.wav";</script>
    <script type="text/javascript" src="${ctxStatic}/js/jquery.js"></script>
    <script type="text/javascript" src="${ctxStatic}/js/media.js"></script>
    <style type="text/css">
        img, div, a{ _behavior:url("${ctxStatic}/alpha/flashanniu.htc") }
    </style>
</head>
<body>
<div id="outer" class="page033">
    <div id="inner">
        <div id="gspic"><img src="${poem.imgUrl}" height="500" /></div>
        <div id="gsitem">
            <ul>
                <li style="background-image:url(${ctxStatic}/image/btn/gssx/gssx_sj.png);height: 50px;margin-bottom: 30px;">
                    <a href="${ctx}/poemitem/one?poemId=${poem.code}&rowNo=0" style="padding: 12px 22px;font-size: 21px;color:#ffec19;font-weight:bold;">诗名</a>
                </li>
                <c:forEach var="i" begin="1" end="${poem.rows}" step="1">
                    <li style="background-image:url(${ctxStatic}/image/btn/gssx/gssx_sj.png);height: 50px;margin-bottom: 16px;">
                        <a href="${ctx}/poemitem/one?poemId=${poem.code}&rowNo=${i}" style="padding: 12px 19px;font-size: 21px;color:#ffec19;font-weight:bold;">第${i}句</a>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <div id="bhBtn" style="bottom:20px;right:110px">
            <a href="${ctx}/gssx/list?grade=${poem.grade}"><img src="${ctxStatic}/image/btn/back.png"></a>
        </div>
    </div>
</div>
</body>
</html>
