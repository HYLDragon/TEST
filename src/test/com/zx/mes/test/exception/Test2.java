package com.zx.mes.test.exception;

import com.zx.mes.exception.MyException;
import org.apache.log4j.Logger;
import org.junit.*;

import java.io.FileNotFoundException;
import java.io.FileReader;

/**
 * Created by Administrator on 2017/8/11.
 *
 */
public class Test2 {
    private static final Logger logger=Logger.getLogger(Test2.class);

    public void ff() throws MyException{
        try {
            FileReader reader=new FileReader("xxxx");
        } catch (FileNotFoundException e) {
            //e 保存异常信息
            throw new MyException("文件没有找到...",e);
        }
    }

    public void gg() throws MyException{
        try{
            ff();
        }catch (MyException e){
            throw new MyException("xxxx",e);
        }

    }

    @org.junit.Test
    public void test(){
        Test2 test=new Test2();
        try {
            test.gg();
        } catch (MyException e) {
            e.printStackTrace();
        }
    }
}
