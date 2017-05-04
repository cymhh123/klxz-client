<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <title>安装</title>
    <link rel="Shortcut Icon" href="${ctxStatic}/logo.ico">
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/install/css/ui.min.css" />
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/install/icon/iconfont.css" />
    <link href="${ctxStatic}/install/css/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="header"></div>
<div class="loginWraper">
    <div id="loginform" class="loginBox" style="padding-top: 84px;">
        <form id="login" class="form form-horizontal" action="/install/aabbcc" method="post">
            <div class="row cl">
                <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60d;</i></label>
                <div class="formControls col-xs-8">
                    <input id="code" name="code" type="password" placeholder="学校编码" class="input-text size-L" >
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
                <div class="formControls col-xs-8">
                    <input id="serialNumber" name="serialNumber" type="password" placeholder="安装序列号" class="input-text size-L">
                </div>
            </div>
            <div class="row cl">
                <div class="col-xs-8 col-xs-offset-3">
                    <button class="btn btn-success radius size-L">&nbsp;安&nbsp;&nbsp;&nbsp;&nbsp;装&nbsp;</button>
                </div>
            </div>
        </form>
    </div>
</div>
<div class="footer">甲程网络科技公司</div>
</body>
</html>
