<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/8
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jquery.queue</title>
    <style type="text/css">
        div {
            background:#aaa;
            width:18px;
            height:18px;
            position:absolute;
            top:10px;
        }
    </style>
    <script src="${pageContext.request.contextPath}/jslib/jquery-2.2.4.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        $(function () {
            var funs=[function () {
                $("#block1").animate({left:"+100"})
            }];

        });
    </script>
</head>
<body>
    <div id="block1"></div>
    <div id="block2"></div>
</body>
</html>
