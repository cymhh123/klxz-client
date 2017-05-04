package com.jc.klxz.modules.poem.entity;


import com.jc.klxz.common.entity.DataEntity;

/**
 * PoemEntity
 * @author chyou
 * @version
 */
public class Poem extends DataEntity {

    private static final long serialVersionUID = 1L;
    private String title;
    private String imgUrl;
    private String grade;
    private Integer rows;
    private Integer number;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    private String code;

    public Poem() {
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
    public void setGrade(String grade){
        this.grade = grade;
    }
    public String getGrade(){
        return this.grade;
    }
    public void setRows(Integer rows){
        this.rows = rows;
    }
    public Integer getRows(){
        return this.rows;
    }
    public Integer getNumber() {
        return number;
    }
    public void setNumber(Integer number) {
        this.number = number;
    }
}