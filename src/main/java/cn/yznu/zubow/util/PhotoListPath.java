package cn.yznu.zubow.util;

import java.util.ArrayList;
import java.util.List;

/**
 * 图片集合  (方法描述)
 * @author 66495
 * @create 2018-08-22 22:13
 */

public class PhotoListPath {
    private static List<String> photoPathLists = new ArrayList<>();

    public static void addPhotoPath(String path){
        photoPathLists.add(path);
    }

    public static List<String> getPhotoPathLists(){
        return photoPathLists;
    }

    public static void initPhotoPathLists(){
        photoPathLists = null;
    }

}
