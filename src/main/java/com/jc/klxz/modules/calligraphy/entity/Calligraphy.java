package com.jc.klxz.modules.calligraphy.entity;


import com.jc.klxz.common.entity.DataEntity;

/**
 * CalligraphyEntity
 * @author chyou
 * @version
 */
public class Calligraphy extends DataEntity {

    private static final long serialVersionUID = 1L;
    private String title;
    private Integer type;
    private String grade;
    private Integer number;
    private Integer level;
    private String code;

    public Calligraphy() {
        super();
    }
    public void setTitle(String title){
        this.title = title;
    }
    public String getTitle(){
        return this.title;
    }
    public void setType(Integer type){
        this.type = type;
    }
    public Integer getType(){
        return this.type;
    }
    public void setGrade(String grade){
        this.grade = grade;
    }
    public String getGrade(){
        return this.grade;
    }
    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}