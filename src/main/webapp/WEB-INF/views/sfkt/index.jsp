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
        #main{ background:url(${ctxStatic}/shufaketang/images/2_1.jpg) no-repeat 0 0; }
        .btnReturn{ width:85px; height:57px; position:absolute; right:43px; bottom:49px; }
        .nav{ position:absolute; top:219px; left:292px; width:120px; }
        .nav ul{ height:53px; margin-bottom:12px; }
        .nav li{ float:left; width:53px; height:100%; margin-right:5px; }
        .nav a{ width:100%; height:100%; display:inline-block; cursor:pointer; }
        img{ _behavior:url("${ctxStatic}/alpha/flashanniu.htc"); }
    </style>
    <script type="text/javascript">
        var ctx = '${ctx}', ctxStatic='${ctxStatic}';
    </script>
</head>
<body>
<div id="main">
    <div class="wrap">
        <div class="nav">
            <ul class="clearfix">
                <li>
                    <a href="${ctx}/sfkt/list?grade=1&level=1" ><img src="${ctxStatic}/shufaketang/images/button/shang1.png" class="btnToggle" width="53" height="53" alt="" /></a>
                </li>
                <li>
                    <a href="${ctx}/sfkt/list?grade=1&level=2" ><img src="${ctxStatic}/shufaketang/images/button/xia1.png" class="btnToggle" width="53" height="53" alt="" /></a>
                </li>
            </ul>
            <ul class="clearfix">
                <li>
                    <a href="${ctx}/sfkt/list?grade=2&level=1" ><img src="${ctxStatic}/shufaketang/images/button/shang1.png" class="btnToggle" width="53" height="53" alt="" /></a>
                </li>
                <li>
                    <a href="${ctx}/sfkt/list?grade=2&level=2" ><img src="${ctxStatic}/shufaketang/images/button/xia1.png" class="btnToggle" width="53" height="53" alt="" /></a>
                </li>
            </ul>
            <ul class="clearfix">
                <li>
                    <a href="${ctx}/sfkt/list?grade=3&level=1" ><img src="${ctxStatic}/shufaketang/images/button/shang1.png" class="btnToggle" width="53" height="53" alt="" /></a>
                </li>
                <li>
                    <a href="${ctx}/sfkt/list?grade=3&level=2" ><img src="${ctxStatic}/shufaketang/images/button/xia1.png" class="btnToggle" width="53" height="53" alt="" /></a>
                </li>
            </ul>
        </div>
        <div class="nav" style="left:541px;">
            <ul class="clearfix">
                <li>
                    <a href="${ctx}/sfkt/list?grade=4&level=1" ><img src="${ctxStatic}/shufaketang/images/button/shang1.png" class="btnToggle" width="53" height="53" alt="" /></a>
                </li>
                <li>
                    <a href="${ctx}/sfkt/list?grade=4&level=2" ><img src="${ctxStatic}/shufaketang/images/button/xia1.png" class="btnToggle" width="53" height="53" alt="" /></a>
                </li>
            </ul>
            <ul class="clearfix">
                <li>
                    <a href="${ctx}/sfkt/list?grade=5&level=1" ><img src="${ctxStatic}/shufaketang/images/button/shang1.png" class="btnToggle" width="53" height="53" alt="" /></a>
                </li>
                <li>
                    <a href="${ctx}/sfkt/list?grade=5&level=2" ><img src="${ctxStatic}/shufaketang/images/button/xia1.png" class="btnToggle" width="53" height="53" alt="" /></a>
                </li>
            </ul>
            <ul class="clearfix">
                <li>
                    <a href="${ctx}/sfkt/list?grade=6&level=1" ><img src="${ctxStatic}/shufaketang/images/button/shang1.png" class="btnToggle" width="53" height="53" alt="" /></a>
                </li>
                <li>
                    <a href="${ctx}/sfkt/list?grade=6&level=2" ><img src="${ctxStatic}/shufaketang/images/button/xia1.png" class="btnToggle" width="53" height="53" alt="" /></a>
                </li>
            </ul>
        </div>
        <div class="btnReturn">
            <a href="${ctx}/index" ><img src="${ctxStatic}/shufaketang/images/button/return1.png" class="btnToggle" width="85" height="57" /></a>
        </div>
    </div>
</div>

<script type="text/javascript" src="${ctxStatic}/shufaketang/js/jquery.js"></script>
<script type="text/javascript" src="${ctxStatic}/shufaketang/js/base.js"></script>
</body>
</html>
