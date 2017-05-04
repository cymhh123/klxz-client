<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>生字查询系统</title>
    <link rel="Shortcut Icon" href="${ctxStatic}/logo.ico">
    <style type="text/css">
        body{font-size:12px;}
        *{margin:0px;padding:0px;}
        #content{width:800px;height:600px;background:url(${ctxStatic}/image/cx.png) no-repeat center;position:absolute;top:50%;left:50%;margin:-300px 0 0 -400px;}
        #chaxun{width:288px;height:auto;position:absolute;top:349px;left:340px;}
    </style>
    <script language="JavaScript"  type="text/javascript">
        function check(){
            if(document.baoming.zi.value.length==0){
                alert("请输入你要查询的生字!");
                return false;
            }
            return true;
        }

    </script>
</head>

<body>
<div id="content">
    <div id="chaxun">
        <form action="${ctx}/courseWord/cx" method="post" name="baoming">
            <input name="zi" type="text" id="zi" size="10" maxlength="10" align="left" style="height:55px;line-height:55px;font-size:36px;"/>
            <input type="image" name="cx1" src="${ctxStatic}/image/cx1.png" width="88" height="60" border="0" onmousemove="src='${ctxStatic}/image/cx2.png'" onmouseout="src='${ctxStatic}/image/cx1.png'" style="position:absolute;right:0px;top:0px;" onclick="return check()">
            <input type="hidden" name="flag" value="cx" />
        </form>
    </div>
    <div style="position:absolute;bottom:121px;right:106px">
        <a href="${ctx}/index"><img src="${ctxStatic}/image/cx_bk.png"/></a>
    </div>
</div>
</body>
</html>
