package com.amireux.dao;

import com.amireux.entity.*;
import com.amireux.utils.DBUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TeacherDao
{
    private QueryRunner queryRunner=new QueryRunner(DBUtil.getDataSource());
    public Teacher getTeacherByUserId(Integer id)
    {
        String sql="select * from teacher where teacher_id = ?";
        try {
            Teacher query = queryRunner.query(sql, new BeanHandler<Teacher>(Teacher.class),id);
            return query;
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return null;
    }


    public List<Information> findinformation()
    {
        String sql="select * from information";
        try {
            return queryRunner.query(sql,new BeanListHandler<Information>(Information.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public Information findinformation(Integer id)
    {
        String sql="select * from information where student_id=?";
        try {
            return queryRunner.query(sql,new BeanHandler<Information>(Information.class),id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }


    public boolean Grademodify(Integer id, Integer g) throws SQLException {
        String sql="update information set grade=? where Student_id=?";
        try {
            int update = queryRunner.update(sql, g,id);
            return update>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;

    }


    public static void deal(String sql) {
        Connection connection = DBUtil.getConnection();
        PreparedStatement pre = null;
        ResultSet res = null;
        try {
            pre =connection.prepareStatement(sql);
            pre.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {

        }
    }



}
