<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/8
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jquery.deferred</title>
    <script src="${pageContext.request.contextPath}/jslib/jquery-2.2.4.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        $(function () {
            var wait=function () {
                var dtd=$.Deferred();//在函数内部，新建一个Deferred对象
                var tasks=function () {
                    alert("执行完毕!");
                    dtd.resolve();//改变Deferred对象的执行状态
                };

                setTimeout(tasks,5000);

                return dtd.promise();//返回promise对象(将回调函数绑定至promise所返回的对象上)
            }

            $.when(wait()).done(function () {
                alert("success!");
            }).fail(function () {
                alert("fail!");
            });
        });
    </script>
</head>
<body>

</body>
</html>
