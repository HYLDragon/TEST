<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/5
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>setTimeout计时器</title>
    <script src="${pageContext.request.contextPath}/jslib/jquery-2.2.4.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        $(function () {
            for(var i=0;i<5;i++){
                //console.log(i);//0,1,2,3,4
            }
        });
    </script>
    <script type="text/javascript">
        $(function () {
            for(var i=0;i<5;i++){
                setTimeout(function () {
//                    console.log(i);//输出5个5(setTimeout 会延迟执行，那么执行到 console.log 的时候，其实 i 已经变成 5)
                },1000*i);
            }
        });
    </script>
    <script type="text/javascript">
        $(function () {
            for(var i=0;i<5;i++){
                (function (i) {
                    setTimeout(function () {
//                        console.log(i);//输出0,1,2,3,4(闭包解决setTimeout延迟问题)
                    },1000*i);
                })(i);
            }
        });
    </script>
    <script type="text/javascript">
        $(function () {
            for(var i=0;i<5;i++){
                (function () {
                    setTimeout(function () {
//                        console.log(i);//输出5个5，内部没有对i保持引用
                    },1000*i);
                })(i);
            }
        });
    </script>

    <script type="text/javascript">
        for(var i=0;i<5;i++){
            setTimeout((function () {
//                console.log(i);//0-4 setTimeout可以接受函数与字符串作为参数,立即执行函数执行完后就相当于undefinded
            })(i),i*1000);
        }
    </script>

    <script type="text/javascript">
        setTimeout(function() {
            console.log(1)
        }, 0);
        new Promise(function executor(resolve) {
                console.log(2);
                for( var i=0 ; i<10000 ; i++ ) {
                i == 9999 && resolve();
            }
            console.log(3);
        }).then(function() {
            console.log(4);
        });
        console.log(5);


//        首先先碰到一个 setTimeout，于是会先设置一个定时，在定时结束后将传递这个函数放到任务队列里面，因此开始肯定不会输出 1 。
//
//        然后是一个 Promise，里面的函数是直接执行的，因此应该直接输出 2 3 。
//
//        然后，Promise 的 then 应当会放到当前 tick 的最后，但是还是在当前 tick 中。
//
//        因此，应当先输出 5，然后再输出 4 。
//
//        最后在到下一个 tick，就是 1 。
//
//        “2 3 5 4 1”  http://caibaojian.com/interesting-interview.html
    </script>
</head>
<body>

</body>
</html>
