package com.jc.klxz.modules.strokes.entity;


import com.jc.klxz.common.entity.DataEntity;

/**
 * StrokesEntity
 * @author chyou
 * @version
 */
public class Strokes extends DataEntity {

    private static final long serialVersionUID = 1L;
    private String title;
    private String groupCode;
    private String groupName;
    private String feature;
    private String note;
    private String imgUrl;
    private String contentUrl;
    private String fbVideoUrl;
    private String gbVideoUrl;
    private String mbVideoUrl;
    private String dajiaxieUrl;
    private String flag;

    public Strokes() {
        super();
    }
    public void setTitle(String title){
        this.title = title;
    }
    public String getTitle(){
        return this.title;
    }
    public void setGroupCode(String groupCode){
        this.groupCode = groupCode;
    }
    public String getGroupCode(){
        return this.groupCode;
    }
    public void setFeature(String feature){
        this.feature = feature;
    }
    public String getFeature(){
        return this.feature;
    }
    public void setNote(String note){
        this.note = note;
    }
    public String getNote(){
        return this.note;
    }
    public void setImgUrl(String imgUrl){
        this.imgUrl = imgUrl;
    }
    public String getImgUrl(){
        return this.imgUrl;
    }
    public void setContentUrl(String contentUrl){
        this.contentUrl = contentUrl;
    }
    public String getContentUrl(){
        return this.contentUrl;
    }
    public void setFbVideoUrl(String fbVideoUrl){
        this.fbVideoUrl = fbVideoUrl;
    }
    public String getFbVideoUrl(){
        return this.fbVideoUrl;
    }
    public void setGbVideoUrl(String gbVideoUrl){
        this.gbVideoUrl = gbVideoUrl;
    }
    public String getGbVideoUrl(){
        return this.gbVideoUrl;
    }
    public void setMbVideoUrl(String mbVideoUrl){
        this.mbVideoUrl = mbVideoUrl;
    }
    public String getMbVideoUrl(){
        return this.mbVideoUrl;
    }
    public String getGroupName() {
        return groupName;
    }
    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }
    public String getDajiaxieUrl() {
        return dajiaxieUrl;
    }

    public void setDajiaxieUrl(String dajiaxieUrl) {
        this.dajiaxieUrl = dajiaxieUrl;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }
}