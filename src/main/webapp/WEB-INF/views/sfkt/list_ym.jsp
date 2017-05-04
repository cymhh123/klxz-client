<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>小学生书法基础课堂</title>
    <link rel="Shortcut Icon" href="${ctxStatic}/logo.ico">
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/shufaketang/css/base.css" />
    <style type="text/css">
        #main { background: url(${ctxStatic}/shufaketang/images/2_1_2.jpg) no-repeat 0 0; }
        .btnReturn { width: 85px; height: 57px; position: absolute; right: 60px; bottom: 40px; }
        .gMenu2 li { height: 24px; line-height: 24px; }
        img { _behavior: url("${ctxStatic}/shufaketang/alpha/flashanniu.htc"); }
    </style>
    <script type="text/javascript">
        var ctx = '${ctx}', ctxStatic='${ctxStatic}';
    </script>
</head>
<body>
<div id="main">
    <div class="wrap">

        <div class="gTitle"><img src="${ctxStatic}/shufaketang/images/grade/${grade}_${level}.png" width="53" height="252" alt=""></div>

        <div class="gMenu2">
            <ul>
                <c:forEach items="${ylist}" var="item">
                    <li>
                        <a href="${ctx}/sfkt/lession/list?calligraphyId=${item.code}">第${item.number}讲：${item.title}</a>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <div class="gMenu2 l2">
            <ul>
                <c:forEach items="${mlist}" var="item">
                    <li>
                        <a href="${ctx}/sfkt/lession/list?calligraphyId=${item.code}">第${item.number}讲：${item.title}</a>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <div class="btnReturn">
            <a href="${ctx}/sfkt/index"><img src="${ctxStatic}/shufaketang/images/button/return1.png" class="btnToggle" width="85" height="57" /></a>
        </div>
    </div>
</div>

<script type="text/javascript" src="${ctxStatic}/shufaketang/js/jquery.js"></script>
<script type="text/javascript" src="${ctxStatic}/shufaketang/js/base.js"></script>
</body>
</html>
