package com.zx.mes.test.block;

import com.alibaba.fastjson.JSON;
import org.apache.log4j.Logger;


/**
 * Created by Administrator on 2017/8/10.
 */
public class Block {

    private static final Logger logger=Logger.getLogger(Block.class);

    static {
        logger.info(JSON.toJSONStringWithDateFormat("静态代码块执行!","yyyy-MM-dd HH:mm:ss"));
    }

    {
        logger.info(JSON.toJSONStringWithDateFormat("构造代码块执行!","yyyy-MM-dd HH:mm:ss"));
    }

    public Block(){
        logger.info(JSON.toJSONStringWithDateFormat("构造函数执行!","yyyy-MM-dd HH:mm:ss"));
    }
}
