package com.jc.klxz.modules.course.entity;


import com.jc.klxz.common.entity.DataEntity;

/**
 * CourseEntity
 * @author chyou
 * @version
 */
public class Course extends DataEntity {

    private static final long serialVersionUID = 1L;
    private String title;
    private Integer type;
    private String grade;
    private Integer level;
    private Integer number;
    private String code;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Course() {
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
    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }
}