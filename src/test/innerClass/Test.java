package innerClass;

import com.alibaba.fastjson.JSON;
import org.apache.log4j.Logger;

/**
 * Created by Administrator on 2017/8/9.
 */
public class Test {

    private static final Logger logger=Logger.getLogger(Test.class);

    private String str;

    private void outerDisplay(){
        logger.info(JSON.toJSONStringWithDateFormat("外部类打印!","yyyy-MM-dd HH:mm:ss"));
    }

    public class InnerClass{
        public void innerDisplay(){
            //使用外围属性
            str="xxxx";
            logger.info(JSON.toJSONStringWithDateFormat(str,"yyyy-MM-dd HH:mm:ss"));
            //使用外部类方法
            outerDisplay();
        }

    }

    //    推荐使用getXXX()来获取成员内部类，尤其是无参构造函数
    public InnerClass getInnerClass(){
        return new InnerClass();
    }
    @org.junit.Test
    public void test(){
        Test outer=new Test();
        Test.InnerClass inner=outer.getInnerClass();
        inner.innerDisplay();
    }

}

