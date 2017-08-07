<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/7
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>promise说明与操作应用</title>
    <script src="${pageContext.request.contextPath}/jslib/jquery-2.2.4.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        $(function(){
//            console.log(Promise);
//            console.dir(Promise);
       });
    </script>
    <script type="text/javascript">
        $(function(){
            function runAsync() {
                var p=new Promise(function (resolve,reject) {
                    setTimeout(function () {
                        //console.log("执行完成1");
                        resolve("是执行完成了1");
                  },2000);
                });
                return p;
            }
            
            runAsync().then(function (data) {
                //console.log(data);
            });
        });
    </script>
    <%--按顺序执行完成操作--%>
    <script type="text/javascript">
        $(function(){
            function runAsync() {
                var p=new Promise(function (resolve,reject) {
                    setTimeout(function () {
                        //console.log("执行完成1");
                        resolve("是执行完成了1");
                    },2000);
                });
                return p;
            }

            function runAsync2() {
                var p=new Promise(function (resolve,reject) {
                    setTimeout(function () {
                        //console.log("执行完成2");
                        resolve("是执行完成了2");
                    },2000);
                });
                return p;
            }

            runAsync().then(function (data) {
//                console.log(data);
                return runAsync2();
            }).then(function (data) {
//                console.log(data);
                return "是执行完成了3";
            }).then(function (data) {
//                console.log(data);
            });
        });
    </script>

    <script type="text/javascript">
        runAsync=function () {
            var p=new Promise(function (resolve,reject) {
                //异步操作
                setTimeout(function () {
                    var num=Math.ceil(Math.random()*10);
                    if(num>5){
                        resolve("刚好的数字");
                    }else{
                        reject("数字太大");
                   }

                },2000);
            });

            return p;
        }

        runAsync().then(function (data) {
            //console.log(data);
        },function (data) {
            //console.log(data);
        });
    </script>

    <script type="text/javascript">
        runAsync=function () {
            var p=new Promise(function (resolve,reject) {
                //异步操作
                setTimeout(function () {
                    var num=Math.ceil(Math.random()*10);
                    if(num>5){
                        resolve("刚好的数字");
                    }else{
                        reject("数字太大");
                    }

                },2000);
            });

            return p;
        }

        runAsync().then(function (data) {
            //console.log(data);
        },function (data) {
//            console.log(data);
//            console.log(somedata); //此处的somedata未定义(但不会报错，相当于try catch)
        }).catch(function (reason) {
//            console.log(reason);
        });
    </script>

    <script type="text/javascript">
        $(function(){
            function runAsync() {
                var p=new Promise(function (resolve,reject) {
                    setTimeout(function () {
                        //console.log("执行完成1");
                        resolve("是执行完成了1");
                    },2000);
                });
                return p;
            }

            function runAsync2() {
                var p=new Promise(function (resolve,reject) {
                    setTimeout(function () {
                        //console.log("执行完成2");
                        resolve("是执行完成了2");
                    },2000);
                });
                return p;
            }

//            all方法提供了并行执行异步操作的能力,all会把所有异步操作的结果放进一个数组中传给then
//            游戏类的素材比较多的应用，打开网页时，预先加载需要用到的各种资源如图片、flash以及各种静态文件。所有的都加载完后，我们再进行页面的初始化。
//            all方法的效果实际上是「谁跑的慢，以谁为准执行回调」
            Promise.all([runAsync(),runAsync2()]).then(function (data) {
//                console.log(data);
            });
        });
    </script>

    <script type="text/javascript">
        $(function(){
            function runAsync() {
                var p=new Promise(function (resolve,reject) {
                    setTimeout(function () {
                        //console.log("执行完成1");
                        resolve("是执行完成了1");
                    },3000);
                });
                return p;
            }

            function runAsync2() {
                var p=new Promise(function (resolve,reject) {
                    setTimeout(function () {
                        //console.log("执行完成2");
                        resolve("是执行完成了2");
                    },2000);
                });
                return p;
            }


//            游戏类的素材比较多的应用，打开网页时，预先加载需要用到的各种资源如图片、flash以及各种静态文件。所有的都加载完后，我们再进行页面的初始化。
//            race方法「谁跑的快，以谁为准执行回调」,后面的不再执行(****实验以谷哥为准，不再执行其它的)
//            比如我们可以用race给某个异步请求设置超时时间，并且在超时后执行相应的操作
            Promise.race([runAsync(),runAsync2()]).then(function (data) {
               console.log(data);
            });
        });
    </script>

</head>
<body>

</body>
</html>
