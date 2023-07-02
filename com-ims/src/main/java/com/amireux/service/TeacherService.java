package com.amireux.service;

import com.amireux.dao.TeacherDao;
import com.amireux.entity.Teacher;
import com.amireux.entity.Information;

import java.sql.SQLException;
import java.util.List;

public class TeacherService {
    private TeacherDao teacherDao=new TeacherDao();

    public Teacher getTeacherByUserId(Integer id)
    {
        return teacherDao.getTeacherByUserId(id);
    }

    public List<Information> findinformation()
    {
        return teacherDao.findinformation();
    }
    public Information findinformation(Integer id)
    {
        return teacherDao.findinformation(id);
    }
    public boolean Grademodify(Integer id, Integer g) throws SQLException {
        return teacherDao.Grademodify(id,g);
    }
}
