package com.jc.klxz.modules.bushou.entity;


import com.jc.klxz.common.entity.DataEntity;

/**
 * BushouEntity
 * @author chyou
 * @version
 */
public class Bushou extends DataEntity {

    private static final long serialVersionUID = 1L;
    private String groupCode;
    private String videoUrl;
    private String imgUrl;

    public Bushou() {
        super();
    }
    public void setGroupCode(String groupCode){
        this.groupCode = groupCode;
    }
    public String getGroupCode(){
        return this.groupCode;
    }
    public void setVideoUrl(String videoUrl){
        this.videoUrl = videoUrl;
    }
    public String getVideoUrl(){
        return this.videoUrl;
    }
    public void setImgUrl(String imgUrl){
        this.imgUrl = imgUrl;
    }
    public String getImgUrl(){
        return this.imgUrl;
    }
}