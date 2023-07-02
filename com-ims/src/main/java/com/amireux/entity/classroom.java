package com.amireux.entity;

public class classroom
{
    private String classroom_id;
    private String classroom_name;
    private Integer capacity;

    public classroom() {
    }

    public classroom(String classroom_id, String classroom_name, Integer capacity) {
        this.classroom_id = classroom_id;
        this.classroom_name = classroom_name;
        this.capacity = capacity;
    }


    public String getClassroom_id() {
        return classroom_id;
    }

    public void setClassroom_id(String classroom_id) {
        this.classroom_id = classroom_id;
    }

    public String getClassroom_name() {
        return classroom_name;
    }


    public void setClassroom_name(String classroom_name) {
        this.classroom_name = classroom_name;
    }

    public Integer getCapacity() {
        return capacity;
    }

    public void setCapacity(Integer capacity) {
        this.capacity = capacity;
    }

    public String toString() {
        return "classroom{classroom_id = " + classroom_id + ", classroom_name = " + classroom_name + ", capacity = " + capacity + "}";
    }
}
