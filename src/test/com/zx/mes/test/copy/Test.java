package com.zx.mes.test.copy;

import com.alibaba.fastjson.JSON;
import com.zx.mes.copy.CloneUtils;
import com.zx.mes.copy.Email;

import com.zx.mes.copy.Person;
import org.apache.log4j.Logger;


/**
 * Created by Administrator on 2017/8/10.
 * 对深拷贝进行测试
 */
public class Test {
    private static final Logger logger=Logger.getLogger(Test.class);

    @org.junit.Test
    public void test(){
        Email email=new Email();
        email.setContext("邮件内容");
        Person person1=new Person();
        person1.setName("张三");
        person1.setEmail(email);

        Person person2= CloneUtils.clone(person1);
        person2.setName("李四");

        Person person3=CloneUtils.clone(person1);
        person3.setName("王五");
        person3.getEmail().setContext("这是王五独有的邮件!");


        logger.info(JSON.toJSONStringWithDateFormat(person1.getName()+" 邮件内容: "+person1.getEmail().getContext(),"yyyy-MM-dd " +
                "HH:mm:ss"));
        logger.info(JSON.toJSONStringWithDateFormat(person2.getName()+" 邮件内容: "+person2.getEmail().getContext(),
                "yyyy-MM-dd " +
                "HH:mm:ss"));
        logger.info(JSON.toJSONStringWithDateFormat(person3.getName()+" 邮件内容: "+person3.getEmail().getContext(),
                "yyyy-MM-dd " +
                "HH:mm:ss"));

    }



}
