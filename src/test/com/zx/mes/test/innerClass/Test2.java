package com.zx.mes.test.innerClass;

import com.alibaba.fastjson.JSON;
import org.apache.log4j.Logger;

/**
 * Created by Administrator on 2017/8/9.
 * 局部内部类
 * 在方法内部
 */
public class Test2 {
    private static final Logger logger=Logger.getLogger(Test2.class);

    public Test2 test(String str){
        class NTest extends Test2{
            private String name;
            private NTest(String str){
                name=str;
            }
            public  String readName(){
                return name;
            }
        }
        return new NTest(str);
    }

    @org.junit.Test
    public void test(){

        logger.info(JSON.toJSONStringWithDateFormat((new Test2()).test("测试名称为:Test2"),"yyyy-MM-dd HH:mm:ss"));
        //logger.info(JSON.toJSONStringWithDateFormat((new Test2()).test("测试名称为:Test2"),"yyyy-MM-dd HH:mm:ss"));
    }
}
