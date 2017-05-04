package com.jc.klxz.modules.hardpen.entity;


import com.jc.klxz.common.entity.DataEntity;

/**
 * HardpenEntity
 * @author chyou
 * @version
 */
public class Hardpen extends DataEntity {

    private static final long serialVersionUID = 1L;
    private String title;
    private String code;
    private String note;
    private String videoUrl;

    public Hardpen() {
        super();
    }
    public void setTitle(String title){
        this.title = title;
    }
    public String getTitle(){
        return this.title;
    }
    public void setCode(String code){
        this.code = code;
    }
    public String getCode(){
        return this.code;
    }
    public void setNote(String note){
        this.note = note;
    }
    public String getNote(){
        return this.note;
    }
    public void setVideoUrl(String videoUrl){
        this.videoUrl = videoUrl;
    }
    public String getVideoUrl(){
        return this.videoUrl;
    }
}
