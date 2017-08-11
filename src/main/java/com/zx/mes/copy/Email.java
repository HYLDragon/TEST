package com.zx.mes.copy;

import java.io.Serializable;

/**
 * Created by Administrator on 2017/8/11.
 */
public class Email implements Serializable{

    private String context;

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }
}
