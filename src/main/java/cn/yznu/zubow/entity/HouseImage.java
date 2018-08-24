package cn.yznu.zubow.entity;

import lombok.Data;

@Data
public class HouseImage {
    private String houseId;

    private String imageurl;

    public HouseImage(String houseId, String imageurl) {
        this.houseId = houseId;
        this.imageurl = imageurl;
    }

    public HouseImage() {
    }
}