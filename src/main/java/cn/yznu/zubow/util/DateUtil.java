package cn.yznu.zubow.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 时间格式转换(方法描述)
 *
 * @author 66495
 * @create 2018-08-27 16:05
 */

public class DateUtil {
    /**
     * 时间格式 Thu Aug 23 00:00:00 CST 2018 转 正常日期
     * @param time
     */
    public static Date getTime(Date time){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
        String formatDate = df.format(time);
        Date date = null;
        try {
            date= format1.parse(formatDate);
            System.out.println(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }
}
