package cn.yznu.zubow.controller;

import cn.yznu.zubow.util.InfoType;
import cn.yznu.zubow.util.PhotoListPath;
import cn.yznu.zubow.util.PhotoUtil;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 测试图片上传(方法描述)
 *
 * @author 66495
 * @create 2018-08-22 11:12
 */

@RestController
@RequestMapping("/house")
public class PictureController {

    @RequestMapping("/pictureUp")
    public InfoType infoType(Model model, MultipartFile file, HttpServletRequest request, HttpServletResponse response) throws IOException {
        String imgPath = PhotoUtil.saveFile(file, request);
        PhotoListPath.addPhotoPath(imgPath);
        /*将 imgPath 保存到list集合  添加房源时 用list 内容添加房源和图片表相连接*/
        InfoType infoType = new InfoType();
        System.out.println(imgPath);
        infoType.setMsg(imgPath);
        System.out.println(infoType.toString());
        return  infoType;
    }
}
