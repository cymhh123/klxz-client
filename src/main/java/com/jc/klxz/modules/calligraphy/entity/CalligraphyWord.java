package com.jc.klxz.modules.calligraphy.entity;


import com.jc.klxz.common.entity.DataEntity;

/**
 * CalligraphyWordEntity
 * @author chyou
 * @version
 */
public class CalligraphyWord extends DataEntity {

    private static final long serialVersionUID = 1L;
    private String type;
    private String title;
    private String imgUrl;

    public CalligraphyWord() {
        super();
    }
    public void setType(String type){
        this.type = type;
    }
    public String getType(){
        return this.type;
    }
    public void setTitle(String title){
        this.title = title;
    }
    public String getTitle(){
        return this.title;
    }
    public void setImgUrl(String imgUrl){
        this.imgUrl = imgUrl;
    }
    public String getImgUrl(){
        return this.imgUrl;
    }
}