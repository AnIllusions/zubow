package cn.yznu.zubow.util;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * 图片复制(方法描述)
 *
 * @author 66495
 * @create 2018-08-23 11:36
 */

public class PhotoCopyUtil {
    public static void copyFile3(String srcPath, String destPath) throws IOException {
        // 打开输入流
        FileInputStream fis = new FileInputStream(srcPath);
        // 打开输出流
        FileOutputStream fos = new FileOutputStream(destPath);

        // 读取和写入信息
        int len = 0;
        // 创建一个字节数组，当做缓冲区
        byte[] b = new byte[1024];
        while ((len = fis.read(b)) != -1) {
            fos.write(b, 0, len);
        }

        // 关闭流  先开后关  后开先关
        fos.close(); // 后开先关
        fis.close(); // 先开后关

    }
}
