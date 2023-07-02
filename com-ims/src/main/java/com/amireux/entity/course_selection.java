package com.amireux.entity;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class course_selection
{
    private Integer selection_id;
    private Integer student_id;
    private Integer course_id;
    private LocalDateTime selection_date;

    public course_selection() {
    }

    public course_selection(Integer selection_id, Integer student_id, Integer course_id, LocalDateTime selection_date) {
        this.selection_id = selection_id;
        this.student_id = student_id;
        this.course_id = course_id;
        this.selection_date = selection_date;
    }

    /**
     * 获取
     * @return selection_id
     */
    public Integer getSelection_id() {
        return selection_id;
    }

    /**
     * 设置
     * @param selection_id
     */
    public void setSelection_id(Integer selection_id) {
        this.selection_id = selection_id;
    }

    /**
     * 获取
     * @return student_id
     */
    public Integer getStudent_id() {
        return student_id;
    }

    /**
     * 设置
     * @param student_id
     */
    public void setStudent_id(Integer student_id) {
        this.student_id = student_id;
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
     * @return selection_date
     */
    public LocalDateTime getSelection_date() {
        return selection_date;
    }

    public String getSelection_dateStr() {
        DateTimeFormatter fmt = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            return  fmt.format(selection_date);
    }

    /**
     * 设置
     * @param selection_date
     */
    public void setSelection_date(LocalDateTime selection_date) {
        this.selection_date = selection_date;
    }

    public String toString() {
        return "Course_selection{selection_id = " + selection_id + ", student_id = " + student_id + ", course_id = " + course_id + ", selection_date = " + selection_date + "}";
    }
}
