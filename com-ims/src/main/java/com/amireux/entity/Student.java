package com.amireux.entity;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Student
{
    private Integer student_id;
    private String  student_name;
    private String  major;
    private String  student_password;
    private LocalDateTime birthday;
    private String gender;

    public Student() {
    }

    public Student(Integer student_id, String student_name, String major, String student_password, LocalDateTime birthday, String gender) {
        this.student_id = student_id;
        this.student_name = student_name;
        this.major = major;
        this.student_password = student_password;
        this.birthday = birthday;
        this.gender = gender;
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
     * @return student_name
     */
    public String getStudent_name() {
        return student_name;
    }

    /**
     * 设置
     * @param student_name
     */
    public void setStudent_name(String student_name) {
        this.student_name = student_name;
    }

    /**
     * 获取
     * @return major
     */
    public String getMajor() {
        return major;
    }

    /**
     * 设置
     * @param major
     */
    public void setMajor(String major) {
        this.major = major;
    }

    /**
     * 获取
     * @return student_password
     */
    public String getStudent_password() {
        return student_password;
    }

    /**
     * 设置
     * @param student_password
     */
    public void setStudent_password(String student_password) {
        this.student_password = student_password;
    }

    /**
     * 获取
     * @return birthday
     */
    public LocalDateTime getBirthday() {
        return birthday;
    }

    public String getBirthdayStr() {

        DateTimeFormatter fmt = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        return  fmt.format(birthday);
    }

    /**
     * 设置
     * @param birthday
     */
    public void setBirthday(LocalDateTime birthday) {
        this.birthday = birthday;
    }

    /**
     * 获取
     * @return gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * 设置
     * @param gender
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    public String toString() {
        return "Student{student_id = " + student_id + ", student_name = " + student_name + ", major = " + major + ", student_password = " + student_password + ", birthday = " + birthday + ", gender = " + gender + "}";
    }
}
