package com.zx.mes.test.innerClass;

import com.alibaba.fastjson.JSON;
import com.zx.mes.proxy.dao.IDao;
import org.apache.log4j.Logger;


/**
 * Created by Administrator on 2017/8/9.
 * 匿名内部类(一般使用在SWing监听事件中)
 */

/*
*new 父类构造器(参数列表)|实现接口(){
*  //匿名内部类的类体部分
*  //注意:
*  1.匿名内部灰必须继承一个父类或者实现一个接口
*  2.只能继承一个父类或者实现一个接口
*  3.匿名内部类只是一次性产口，用完不再存在
*  4.匿名内部类中不能定义构造函数
*  5.匿名内部类中不能存在任何的静太成员变量和静态方法
*  6.当给内部内传递参数时，该参数须加finalc
*  内部类并不是直接调用方法传递的参数，而是利用自身的构造器对传入的参数进行备份，自己内部方法调用的实际上时自己的属性而不是外部方法传递进来的参数。
*  为了保持内外一致(详细看编译后的内部类class文件)
*  7.一般类利用构造器来初使化，匿名函数使用代码块来初使化
*   //构造代码块完成初始化工作
    {
        if(0 < age && age < 200){
            age_ = age;
            name_ = name;
        }
    }
* }
*
 */
public class Test3 {

    private static final Logger logger=Logger.getLogger(Test3.class);
    //实则是普通内部类的简写版
    public IDao getInnerClass2(){
        return  new IDao() {
            public void delete(String id) {
                logger.info(JSON.toJSONStringWithDateFormat("删除","yyyy-MM-dd HH:mm:ss"));
            }

            public String find(String id) {
                logger.info(JSON.toJSONStringWithDateFormat("查询","yyyy-MM-dd HH:mm:ss"));
                return null;
            }
        };
    }

    @org.junit.Test
    public void test(){
        IDao dao= new Test3().getInnerClass2();
        dao.delete("");
    }
}
