package com.amireux.entity;

import lombok.Data;

//@Data
public class User
{
    private  Integer UserIdentify;
    private String UserName;
    private String password;

    public User() {
    }

    public User(Integer UserIdentify, String UserName, String password) {
        this.UserIdentify = UserIdentify;
        this.UserName = UserName;
        this.password = password;
    }

    /**
     * 获取
     * @return UserIdentify
     */
    public Integer getUserIdentify() {
        return UserIdentify;
    }

    /**
     * 设置
     * @param UserIdentify
     */
    public void setUserIdentify(Integer UserIdentify) {
        this.UserIdentify = UserIdentify;
    }

    /**
     * 获取
     * @return UserName
     */
    public String getUserName() {
        return UserName;
    }

    /**
     * 设置
     * @param UserName
     */
    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    /**
     * 获取
     * @return password
     */
    public String getPassword() {
        return password;
    }

    /**
     * 设置
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    public String toString() {
        return "User{UserIdentify = " + UserIdentify + ", UserName = " + UserName + ", password = " + password + "}";
    }
}
