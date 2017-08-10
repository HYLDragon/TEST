package com.zx.mes.test.block;

import com.alibaba.fastjson.JSON;
import org.apache.log4j.Logger;

/**
 * Created by Administrator on 2017/8/10.
 */
public class Test {
    private static final Logger logger=Logger.getLogger(Block.class);

    @org.junit.Test
    public void test(){

        logger.info(JSON.toJSONStringWithDateFormat("开始测试","yyyy-MM-dd HH:mm:ss"));

        Block block=new Block();
    }
}
