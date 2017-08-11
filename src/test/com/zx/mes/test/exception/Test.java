package com.zx.mes.test.exception;

import com.alibaba.fastjson.JSON;
import com.zx.mes.exception.MyException;
import org.apache.log4j.Logger;

/**
 * Created by Administrator on 2017/8/11.
 */
public class Test {
    private static final Logger logger=Logger.getLogger(Test.class);

    public void mod(int i) throws MyException{
        if(i==0){
            throw new MyException("除数不能为0");
            //logger.info(JSON.toJSONStringWithDateFormat("除数不能为零","yyyy-MM-dd HH:mm:ss"));
        }else{
            logger.info(JSON.toJSONStringWithDateFormat("xx","yyyy-MM-dd HH:mm:ss"));
        }
    }


    @org.junit.Test
    public void test(){
        Test test=new Test();
        try {
            test.mod(0);
        } catch (MyException e) {
            logger.info(JSON.toJSONStringWithDateFormat(e.getMessage(),"yyyy-MM-dd HH:mm:ss"));
            e.printStackTrace();
        }
    }
}
