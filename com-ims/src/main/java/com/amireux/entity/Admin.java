package com.amireux.entity;

import lombok.Data;

//@Data
public class Admin
{
    private Integer admin_id;
    private  String admin_name;
    private  String admin_password;


    public Admin() {
    }

    public Admin(Integer admin_id, String admin_name, String admin_password) {
        this.admin_id = admin_id;
        this.admin_name = admin_name;
        this.admin_password = admin_password;
    }

    /**
     * 获取
     * @return admin_id
     */
    public Integer getAdmin_id() {
        return admin_id;
    }

    /**
     * 设置
     * @param admin_id
     */
    public void setAdmin_id(Integer admin_id) {
        this.admin_id = admin_id;
    }

    /**
     * 获取
     * @return admin_name
     */
    public String getAdmin_name() {
        return admin_name;
    }

    /**
     * 设置
     * @param admin_name
     */
    public void setAdmin_name(String admin_name) {
        this.admin_name = admin_name;
    }

    /**
     * 获取
     * @return admin_password
     */
    public String getAdmin_password() {
        return admin_password;
    }

    /**
     * 设置
     * @param admin_password
     */
    public void setAdmin_password(String admin_password) {
        this.admin_password = admin_password;
    }

    public String toString() {
        return "Admin{admin_id = " + admin_id + ", admin_name = " + admin_name + ", admin_password = " + admin_password + "}";
    }
}
