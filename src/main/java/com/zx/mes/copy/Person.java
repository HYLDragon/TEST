package com.zx.mes.copy;

import java.io.Serializable;

/**
 * Created by Administrator on 2017/8/11.
 */
public class Person implements Serializable {
    /** 姓名 **/
    private String name;

    /** 电子邮件 **/
    private Email email;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Email getEmail() {
        return email;
    }

    public void setEmail(Email email) {
        this.email = email;
    }
}
