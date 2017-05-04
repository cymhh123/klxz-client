package com.jc.klxz.modules.xzzs.entity;


import com.jc.klxz.common.entity.DataEntity;

/**
 * XzzsEntity
 * @author chyou
 * @version
 */
public class Xzzs extends DataEntity {

    private static final long serialVersionUID = 1L;
    private String title;
    private String videoUrl;
    private String imgUrl;
    private String code;

    public Xzzs() {
        super();
    }
    public void setTitle(String title){
        this.title = title;
    }
    public String getTitle(){
        return this.title;
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
    public void setCode(String code){
        this.code = code;
    }
    public String getCode(){
        return this.code;
    }
}