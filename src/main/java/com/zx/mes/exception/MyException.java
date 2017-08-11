package com.zx.mes.exception;

/**
 * Created by Administrator on 2017/8/11.
 *
 * 自定义异常的步骤
 * 1.定义一个类继承Throwable或其子类
 * 2.添加构造方法(也可以使用默认构造方法)
 * 3.在基某个方法内抛出该异常
 * 4.捕捉该异常
 */
public class MyException extends Exception{
    public MyException() {
    }

    public MyException(String message) {
        super(message);
    }

    public MyException(String message, Throwable cause) {
        super(message, cause);
    }
}
