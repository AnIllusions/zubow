package cn.yznu.zubow.util;

import cn.yznu.zubow.entity.User;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;

/**
 * 图片工具类(方法描述)
 *
 * @author 66495
 * @create 2018-08-22 11:43
 */

public class PhotoUtil {

    public static String saveFile(MultipartFile file, HttpServletRequest request) throws IOException {
        // 新文件名
        String newFileName = String.valueOf(System.currentTimeMillis());
        User user = (User) request.getSession().getAttribute("currentUser");
        //源文件名
        String oldFilename = file.getOriginalFilename();

        /*备份到 文件夹*/
        String path = "E:/upload/" + user.getId();
        File file1 = new File(path);
        if (!file1.exists()) {
            file1.mkdirs();
        }
        //文件扩展名
        String extensionName = oldFilename.substring(oldFilename.lastIndexOf(".") + 1);
        // 文件完整路径  E:/upload/1534314370360/1534995536574.jpg
        String imgPath = path + "/" + newFileName + "." + extensionName;
        File newFile1 = new File(imgPath);
        // 保存文件
        file.transferTo(newFile1);

        String webPath2 = request.getSession().getServletContext().getRealPath("\\WEB-INF");
        /*上传到 服务器 target文件下*/
        String targetPath = "\\images\\upload\\"+user.getId();
        File targetFilePath = new File(webPath2 + targetPath);
        String imgPath1 = webPath2 + targetPath + "\\" + newFileName + "." + extensionName;
        File imgFile = new File(imgPath1);
        if (!targetFilePath.exists()) {
            targetFilePath.mkdirs();
        }
        PhotoCopyUtil.copyFile3(imgPath,imgPath1);
        return imgPath1;

        /*//获取 文件上传路径
        String pathval = request.getSession().getServletContext().getRealPath("/") + "WEB-INF/images/uploadFile/";
        // 根据配置文件获取服务器图片存放路径
        String newFileName = String.valueOf(System.currentTimeMillis());
        // 构建文件目录
        File fileDir = new File(pathval);
        if (!fileDir.exists()){
            fileDir.mkdirs();
        }
        //上传的文件名
        String filename = picture.getOriginalFilename();
        *//*输出文件名*//*
        System.out.println(filename);
        //文件扩展名
        String extensionName  = filename.substring(filename.lastIndexOf(".") + 1);

        String imgName = newFileName +"."+ extensionName;
        *//*输出文件路径 *//*
        System.out.println(imgName);
        *//*输出绝对路径*//*
        System.out.println(pathval+imgName);




        picture.transferTo(new File(pathval));

        *//*FileOutputStream fileOutputStream = new FileOutputStream(pathval+imgPath);
        fileOutputStream.write(picture.getBytes());
        fileOutputStream.flush();
        fileOutputStream.close();*//*
        return pathval+imgName;*/
    }

    private void deleteFile(String oldPic) {
        /* 构建文件目录 */
        File fileDir = new File(oldPic);
        if (fileDir.exists()) {
            //把修改之前的图片删除 以免太多没用的图片占据空间
            fileDir.delete();
        }
    }
}
