package com.jc.klxz.modules.course.entity;


import com.jc.klxz.common.entity.DataEntity;

/**
 * WordEntity
 * @author chyou
 * @version
 */
public class Word extends DataEntity {

    private static final long serialVersionUID = 1L;
    private String bushou;
    private String zuci;
    private String structure;
    private String zi;
    private String pinyin;
    private String imgUrl;
    private String rdUrl;
    private String bsVideoUrl;
    private String gbVideoUrl;
    private String mbVideoUrl;
    private String qbVideoUrl;

    public Word() {
        super();
    }
    public void setBushou(String bushou){
        this.bushou = bushou;
    }
    public String getBushou(){
        return this.bushou;
    }
    public void setZuci(String zuci){
        this.zuci = zuci;
    }
    public String getZuci(){
        return this.zuci;
    }
    public void setStructure(String structure){
        this.structure = structure;
    }
    public String getStructure(){
        return this.structure;
    }
    public void setZi(String zi){
        this.zi = zi;
    }
    public String getZi(){
        return this.zi;
    }
    public void setPinyin(String pinyin){
        this.pinyin = pinyin;
    }
    public String getPinyin(){
        return this.pinyin;
    }
    public void setImgUrl(String imgUrl){
        this.imgUrl = imgUrl;
    }
    public String getImgUrl(){
        return this.imgUrl;
    }
    public void setRdUrl(String rdUrl){
        this.rdUrl = rdUrl;
    }
    public String getRdUrl(){
        return this.rdUrl;
    }
    public void setBsVideoUrl(String bsVideoUrl){
        this.bsVideoUrl = bsVideoUrl;
    }
    public String getBsVideoUrl(){
        return this.bsVideoUrl;
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
    public void setQbVideoUrl(String qbVideoUrl){
        this.qbVideoUrl = qbVideoUrl;
    }
    public String getQbVideoUrl(){
        return this.qbVideoUrl;
    }
}