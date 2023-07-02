package com.amireux.entity;

public class Course
{
    private Integer course_id;
    private String  course_name;
    private Integer credit;
    private Integer teacher_id;

    public Course() {
    }

    public Course(Integer course_id, String course_name, Integer credit, Integer teacher_id) {
        this.course_id = course_id;
        this.course_name = course_name;
        this.credit = credit;
        this.teacher_id = teacher_id;
    }

    /**
     * 获取
     * @return course_id
     */
    public Integer getCourse_id() {
        return course_id;
    }

    /**
     * 设置
     * @param course_id
     */
    public void setCourse_id(Integer course_id) {
        this.course_id = course_id;
    }

    /**
     * 获取
     * @return course_name
     */
    public String getCourse_name() {
        return course_name;
    }

    /**
     * 设置
     * @param course_name
     */
    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    /**
     * 获取
     * @return credit
     */
    public Integer getCredit() {
        return credit;
    }

    /**
     * 设置
     * @param credit
     */
    public void setCredit(Integer credit) {
        this.credit = credit;
    }

    /**
     * 获取
     * @return teacher_id
     */
    public Integer getTeacher_id() {
        return teacher_id;
    }

    /**
     * 设置
     * @param teacher_id
     */
    public void setTeacher_id(Integer teacher_id) {
        this.teacher_id = teacher_id;
    }

    public String toString() {
        return "Course{course_id = " + course_id + ", course_name = " + course_name + ", credit = " + credit + ", teacher_id = " + teacher_id + "}";
    }
}
