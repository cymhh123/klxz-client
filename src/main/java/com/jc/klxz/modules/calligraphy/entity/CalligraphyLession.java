package com.jc.klxz.modules.calligraphy.entity;


import com.jc.klxz.common.entity.DataEntity;

/**
 * CalligraphyLessionEntity
 * @author chyou
 * @version
 */
public class CalligraphyLession extends DataEntity {

    private static final long serialVersionUID = 1L;
    private String title;
    private String times;
    private String videoUrl;
    private String calligraphyId;
    private Integer number;


    public CalligraphyLession() {
        super();
    }
    public void setTitle(String title){
        this.title = title;
    }
    public String getTitle(){
        return this.title;
    }
    public void setTimes(String times){
        this.times = times;
    }
    public String getTimes(){
        return this.times;
    }
    public void setVideoUrl(String videoUrl){
        this.videoUrl = videoUrl;
    }
    public String getVideoUrl(){
        return this.videoUrl;
    }
    public void setCalligraphyId(String calligraphyId){
        this.calligraphyId = calligraphyId;
    }
    public String getCalligraphyId(){
        return this.calligraphyId;
    }
    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }
}