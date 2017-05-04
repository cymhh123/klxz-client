package com.jc.klxz.modules.course.entity;


import com.jc.klxz.common.entity.DataEntity;

/**
 * CourseWordEntity
 * @author chyou
 * @version
 */
public class CourseWord extends DataEntity {

    private static final long serialVersionUID = 1L;
    private String bushou;
    private String zuci;
    private String structure;
    private String pinyin;
    private String imgUrl;
    private String rdUrl;
    private String bsVideoUrl;
    private String gbVideoUrl;
    private String mbVideoUrl;
    private String qbVideoUrl;
    private String version;
    private String zi;
    private String courseCode;

    public CourseWord() {
        super();
    }

    public String getBushou() {
        return bushou;
    }

    public void setBushou(String bushou) {
        this.bushou = bushou;
    }

    public String getZuci() {
        return zuci;
    }

    public void setZuci(String zuci) {
        this.zuci = zuci;
    }

    public String getStructure() {
        return structure;
    }

    public void setStructure(String structure) {
        this.structure = structure;
    }

    public String getPinyin() {
        return pinyin;
    }

    public void setPinyin(String pinyin) {
        this.pinyin = pinyin;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getRdUrl() {
        return rdUrl;
    }

    public void setRdUrl(String rdUrl) {
        this.rdUrl = rdUrl;
    }

    public String getBsVideoUrl() {
        return bsVideoUrl;
    }

    public void setBsVideoUrl(String bsVideoUrl) {
        this.bsVideoUrl = bsVideoUrl;
    }

    public String getGbVideoUrl() {
        return gbVideoUrl;
    }

    public void setGbVideoUrl(String gbVideoUrl) {
        this.gbVideoUrl = gbVideoUrl;
    }

    public String getMbVideoUrl() {
        return mbVideoUrl;
    }

    public void setMbVideoUrl(String mbVideoUrl) {
        this.mbVideoUrl = mbVideoUrl;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getZi() {
        return zi;
    }

    public void setZi(String zi) {
        this.zi = zi;
    }

    public String getCourseCode() {
        return courseCode;
    }

    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }

    public String getQbVideoUrl() {
        return qbVideoUrl;
    }

    public void setQbVideoUrl(String qbVideoUrl) {
        this.qbVideoUrl = qbVideoUrl;
    }
}