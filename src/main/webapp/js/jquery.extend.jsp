<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/5
  Time: 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jquery.extend</title>
    <script src="${pageContext.request.contextPath}/jslib/jquery-2.2.4.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        $(function(){
            $.extend({
                add:function(){
                    alert("加法方法");
                },
                min:function(){
                    alert("取最小值");
                }
            });
            //$.add();
        });
    </script>
    <script type="text/javascript">
        $(function (){
            var target={
                name:"六道"
            };
            var object=$.extend(target,{
                age:23,
                sex:"男"
            },{
                getAge:function () {
                    return target.age;
                }
            });
            //alert(target.getAge());
            console.log(object);
        });

    </script>
    <%--<script type="text/javascript">--%>
        <%--$(function(){--%>
            <%--$.fn.extend({--%>
                <%--addMSG:function(){--%>
                    <%--$(this).click(function(){--%>
                        <%--alert("点击弹出信息");--%>
                    <%--});--%>
                <%--}--%>
            <%--});--%>
        <%--});--%>
        <%--$(".add2").addMSG();--%>
    <%--</script>--%>
    <%--上面不行的原因就是dom没有加载完，js就执行完了--%>
    <script type="text/javascript">
        $(function () {
            $.fn.extend({
                addMSG:function() {
                    $(this).click(function(){
                        alert($(this).val());
                    });
                }
            });
            $("#input1").addMSG();
        });
 </script>
<script type="text/javascript">
    <%--sy相当于java的包名--%>
    var sy=$.extend({},sy);
    sy.add=function () {
            alert("xxxxx");
    }
    sy.min=function () {
        alert("xx");
    }
    console.log(sy);//Object { add: sy.add(), min: sy.min() }
    sy.min();

//    $(function () {
//        var sy=$.extend({},sy);
//        sy.add=function () {
//            alert("xxxxx");
//        }
//        console.log(sy);
//    });
</script>
</head>
<body>
<%--<input class="add2"/>--%>
<input id="input1"/>
</body>
</html>
