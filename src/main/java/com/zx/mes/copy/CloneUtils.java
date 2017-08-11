package com.zx.mes.copy;

import com.alibaba.fastjson.JSON;
import org.apache.log4j.Logger;

import java.io.*;

/**
 * Created by Administrator on 2017/8/11.
 * 实现深拷贝
 *
 */
public class CloneUtils {
    private static final Logger logger=Logger.getLogger(CloneUtils.class);

    public static <T extends Serializable> T clone(T obj){
        T cloneObj=null;

        //写入字节流
        ByteArrayOutputStream out=new ByteArrayOutputStream();
        try {
            ObjectOutput obs=new ObjectOutputStream(out);
            obs.writeObject(obj);


            //分配内存，写入原始对象，生成新对象
            ByteArrayInputStream ios=new ByteArrayInputStream(out.toByteArray());
            ObjectInput ois=new ObjectInputStream(ios);
            //返回生成的新对象
            cloneObj= (T) ois.readObject();


            obs.close();
            ios.close();

        } catch (Exception e) {
            logger.debug(JSON.toJSONStringWithDateFormat("创建字节流失败"+e.getMessage(),"yyyy-MM-dd HH:mm:ss"));
            e.printStackTrace();
        }

        return cloneObj;
    }
}
