
## 操作（js/jquery.extend.jsp）
    1.引入jQuery
        <script src="${pageContext.request.contextPath}/jslib/jquery-2.2.4.js" type="text/javascript" charset="utf-8"></script>
    2.extend介绍        
        - 2.1jQuery为开发插件提拱了两个方法，分别是：
              jQuery.fn.extend();
              jQuery.extend();
    
    
    ```java
        jQuery.fn = jQuery.prototype = {
        　　　init: function( selector, context ) {//….
        //……
        };
    ```
    3 jQuery.extend(object)
        -3.1为jQuery类添加类方法，可以理解为添加静态方法。如：
       ```
       $(function(){
           $.extend({
               add:function(){
                   alert("加法方法");
               },
               min:function(){
                   alert("取最小值");
               }
           });
           $.add();
       });
       ```
       -3.2 Object Query.extend( target, object1, [objectN])用一个或多个其他对象来扩展一个对象，返回被扩展的对象
       ```
       $(function (){
           var target={
               name:"六道"
           };
           $.extend(target,{
               age:23,
               sex:"男"
           },{
               getAge:function () {
                   return target.age;
               }
           });
           alert(target.getAge());
       });
       ```
    4.jQuery.fn.extend(object);
        对jQuery.prototype进得扩展，就是为jQuery类添加“成员函数”。jQuery类的实例可以使用这个“成员函数”。
        -4.1对input文本框添加点击事件
        ```
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
        
        <input id="input1"/>
        ```
        -4.2jquery插件开发
        
    5.常用js  http://caibaojian.com/javascript-most-overuse.html
      ```
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
      ```