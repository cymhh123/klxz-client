package com.jc.klxz.modules.poem.entity;


import com.jc.klxz.common.entity.DataEntity;

/**
 * PoemItemEntity
 * @author chyou
 * @version
 */
public class PoemItem extends DataEntity {

    private static final long serialVersionUID = 1L;
    private String title;
    private String imgUrl;
    private String videoUrl;
    private int rowNo;

    public String getPoemId() {
        return poemId;
    }

    public void setPoemId(String poemId) {
        this.poemId = poemId;
    }

    private String poemId;

    public PoemItem() {
        super();
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
    public void setVideoUrl(String videoUrl){
        this.videoUrl = videoUrl;
    }
    public String getVideoUrl(){
        return this.videoUrl;
    }
    public void setRowNo(int rowNo){
        this.rowNo = rowNo;
    }
    public int getRowNo(){
        return this.rowNo;
    }

}