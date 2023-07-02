package com.amireux.service;

import com.amireux.dao.AdminDao;
import com.amireux.entity.*;

import java.util.List;

public class AdminService
{
    private AdminDao adminDao=new AdminDao();

    public Admin getAdminByUserId(Integer id)
    {
        return adminDao.getAdminByUserId(id);
    }


    public List<Student> findStudent() {
        return adminDao.findStudent();
    }

    public List<Student> findStudent(String PageIndex,String pageSize) {
        return adminDao.findStudent(PageIndex,pageSize);
    }
//插眼

    public List<Student> findStudent(Integer id) {
        return adminDao.findStudent(id);
    }


    public List<classroom> findClassroom() {
        return adminDao.findClassroom();
    }
    public List<classroom> findClassroom(String id) {
        return adminDao.findClassroom(id);
    }

    public List<course_selection>  findCourse_selection()
    {
        return adminDao.findCourse_selection();
    }
    public List<course_selection> findCourse_selection(Integer id) {return adminDao.findCourse_selection(id);}

    public List<Course> findCourse() {return adminDao.findCourse();
    }
    public List<Course> findCourse(Integer id) {return adminDao.findCourse(id);
    }

    public boolean StudentDelete(Integer id) {
        return adminDao.StudentDelete(id);
    }

    public boolean ClassroomDelete(String id) {
        return adminDao.ClassroomDelete(id);
    }

    public boolean Course_selectDelete(String id) {
        return adminDao.Course_selectDelete(id);
    }

    public boolean CourseDelete(Integer id) {
        return adminDao.CourseDelete(id);
    }

    public boolean ClassroomAdd(String id, String name, Integer capacity) {
        return adminDao.CourseAdd(id,name,capacity);
    }

    public boolean ClassroomModify(String id1,String id2, String name, Integer capacity) {
        return adminDao.ClassroomModify(id1,id2,name,capacity);
    }

    public boolean courseAdd(String course_id, String course_name, String credit, String teacher_id) {
            return  adminDao.courseAdd(course_id, course_name, credit, teacher_id);
    }


    public boolean updateCourse(Integer id, Integer course_id, String course_name, Integer credit, Integer teacher_id) {
        return  adminDao.updateCourse(id,course_id,course_name,credit,teacher_id);
    }

    public boolean studentAdd(String student_id, String studentname, String major, String student_password, String birthday, String gender) {
            return adminDao.studentAdd(student_id,studentname,major,student_password,birthday,gender);
    }

    public boolean Studentupdate(Integer id, Integer student_id, String student_name, String major, String student_password, String birthday, String gender) {
        return adminDao.Studentupdate(id,student_id,student_name,major,student_password,birthday,gender);
    }

    public boolean Course_selectAdd(Integer selection_id, Integer student_id, Integer course_id, String selection_date) {
        return adminDao.Course_selectAdd(selection_id,student_id,course_id,selection_date);
    }

    public boolean updateCourse_select(Integer id, Integer selection_id, Integer student_id, Integer course_id, String selection_date) {
    return adminDao.updateCourse_select(id,selection_id,student_id,course_id,selection_date);
    }

    public List<Teacher> findTeacherId() {
        return adminDao.findTeacherId();
    }

    public Long getCount() {
        return adminDao.getCount();
    }
}
