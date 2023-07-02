package com.amireux.entity;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * @description:
 * @author: my
 * @time: 2021/1/19 18:43
 */

public class Information {
    private Integer teacher_id;
    private String classroom_name;
    private LocalDateTime schedule_date;
    private Integer student_id;
    private Integer grade;


    public Information() {
    }

    public Information(Integer teacher_id, String classroom_name, LocalDateTime schedule_date, Integer student_id, Integer grade) {
        this.teacher_id = teacher_id;
        this.classroom_name = classroom_name;
        this.schedule_date = schedule_date;
        this.student_id = student_id;
        this.grade = grade;
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

    /**
     * 获取
     * @return classroom_name
     */
    public String getClassroom_name() {
        return classroom_name;
    }

    /**
     * 设置
     * @param classroom_name
     */
    public void setClassroom_name(String classroom_name) {
        this.classroom_name = classroom_name;
    }

    /**
     * 获取
     * @return schedule_date
     */
    public LocalDateTime getSchedule_date() {
        return schedule_date;
    }
    public String getSchedule_dateStr() {
        DateTimeFormatter fmt = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        return fmt.format(schedule_date);
    }
    /**
     * 设置
     * @param schedule_date
     */
    public void setSchedule_date(LocalDateTime schedule_date) {
        this.schedule_date = schedule_date;
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
     * @return grade
     */
    public Integer getGrade() {
        return grade;
    }

    /**
     * 设置
     * @param grade
     */
    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public String toString() {
        return "information{teacher_id = " + teacher_id + ", classroom_name = " + classroom_name + ", schedule_date = " + schedule_date + ", student_id = " + student_id + ", grade = " + grade + "}";
    }
}
