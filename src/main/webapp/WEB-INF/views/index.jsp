<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>小学生书法课堂教学资源库</title>
    <link rel="Shortcut Icon" href="${ctxStatic}/logo.ico">
    <link type="text/css" rel="stylesheet" media="screen" href="${ctxStatic}/css/style.css">
    <script type="text/javascript" src="${ctxStatic}/js/jquery.js"></script>
    <script type="text/javascript">var soundSrc = "${ctxStatic}/alpha/botton.wav";</script>
    <script type="text/javascript" src="${ctxStatic}/js/media.js"></script>
    <script type="text/javascript" src="${ctxStatic}/js/base.js"></script>
    <style type="text/css">
        .btnSfkt{width: 149px;height: 74px;position: absolute;bottom: 90px;left: 325px;}
    </style>
    <title>快乐习字</title>
</head>

<body>
<div id="outer" class="page003">
    <div id="inner">
        <div id="shangxia" class="clearfix">
            <ul>
                <li>
                    <a href="${ctx}/course/list?grade=1&level=1" onmouseover="flash()"><img src="${ctxStatic}/image/btn/sc1.png" class="btnToggle" width="45" height="45" /></a>
                </li>
                <li>
                    <a href="${ctx}/course/list?grade=2&level=1" onmouseover="flash()"><img src="${ctxStatic}/image/btn/sc1.png" class="btnToggle" width="45" height="45" /></a>
                </li>
                <li>
                    <a href="${ctx}/course/list?grade=3&level=1" onmouseover="flash()"><img src="${ctxStatic}/image/btn/sc1.png" class="btnToggle" width="45" height="45" /></a>
                </li>
            </ul>
            <ul style="margin-right:178px;">
                <li>
                    <a href="${ctx}/course/list?grade=1&level=2" onmouseover="flash()"><img src="${ctxStatic}/image/btn/xc1.png" class="btnToggle" width="45" height="45" /></a>
                </li>
                <li>
                    <a href="${ctx}/course/list?grade=2&level=2" onmouseover="flash()"><img src="${ctxStatic}/image/btn/xc1.png" class="btnToggle" width="45" height="45" /></a>
                </li>
                <li>
                    <a href="${ctx}/course/list?grade=3&level=2" onmouseover="flash()"><img src="${ctxStatic}/image/btn/xc1.png" class="btnToggle" width="45" height="45" /></a>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="${ctx}/course/list?grade=4&level=1" onmouseover="flash()"><img src="${ctxStatic}/image/btn/sc1.png" class="btnToggle" width="45" height="45" /></a>
                </li>
                <li>
                    <a href="${ctx}/course/list?grade=5&level=1" onmouseover="flash()"><img src="${ctxStatic}/image/btn/sc1.png" class="btnToggle" width="45" height="45" /></a>
                </li>
                <li>
                    <a href="${ctx}/course/list?grade=6&level=1" onmouseover="flash()"><img src="${ctxStatic}/image/btn/sc1.png" class="btnToggle" width="45" height="45" /></a>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="${ctx}/course/list?grade=4&level=2" onmouseover="flash()"><img src="${ctxStatic}/image/btn/xc1.png" class="btnToggle" width="45" height="45" /></a>
                </li>
                <li>
                    <a href="${ctx}/course/list?grade=5&level=2" onmouseover="flash()"><img src="${ctxStatic}/image/btn/xc1.png" class="btnToggle" width="45" height="45" /></a>
                </li>
                <li>
                    <a href="${ctx}/course/list?grade=6&level=2" onmouseover="flash()"><img src="${ctxStatic}/image/btn/xc1.png" class="btnToggle" width="45" height="45" /></a>
                </li>
            </ul>
        </div>

        <div id="zybottom" class="clearfix">
            <ul>
                <li>
                    <a href="${ctx}/xzzs/index" onmouseover="flash()"><img src="${ctxStatic}/image/btn/cg/xzzs1.png" class="btnToggle" width="118" height="46" /></a>
                </li>
                <li></li>
                <li>
                    <a href="${ctx}/strokes/index" onmouseover="flash()"><img src="${ctxStatic}/image/btn/cg/jbbh1.png" class="btnToggle" width="118" height="46" /></a>
                </li>

            </ul>
            <ul>
                <li>
                    <a href="${ctx}/ppbs/index" onmouseover="flash()"><img src="${ctxStatic}/image/btn/cg/ppbs1.png" class="btnToggle" width="118" height="46" /></a>
                </li>
                <li></li>
                <li>
                    <a href="${ctx}/gssx/index" onmouseover="flash()"><img src="${ctxStatic}/image/btn/cg/gssx1.png" class="btnToggle" width="118" height="46" /></a>
                </li>

            </ul>
        </div>
        <div class="btnSfkt">
            <a href="${ctx}/sfkt/index">
                <img src="${ctxStatic}/image/btn/sfkt1.png" class="btnToggle" onmouseover="flash()" width="149" height="74" />
            </a>
        </div>
        <div id="chaxun" onMouseOver="flash()">
            <a href="${ctx}/courseWord/cx/index">
                <img src="${ctxStatic}/image/btn/chaxun1.png" class="btnToggle" />
            </a>
        </div>
    </div>
</div>
</body>
</html>
