package com.amireux.dao;

import com.amireux.entity.*;
import com.amireux.utils.DBUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

public class AdminDao {
    private QueryRunner queryRunner = new QueryRunner(DBUtil.getDataSource());

    public Admin getAdminByUserId(Integer id) {
        String sql = "select * from admin where admin_id = ?";
        try {
            Admin query = queryRunner.query(sql, new BeanHandler<Admin>(Admin.class), id);
            return query;
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return null;
    }


    public List<Student> findStudent() {
        String sql = "select * from Student ";
        try {
            return queryRunner.query(sql, new BeanListHandler<Student>(Student.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
    public List<Student> findStudent(String PageIndex,String PageSize) {
        String sql = "select * from Student limit ?,?";
        try {
            return queryRunner.query(sql, new BeanListHandler<Student>(Student.class),(Integer.parseInt(PageIndex)-1)*Integer.parseInt(PageSize),Integer.parseInt(PageSize));
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
//    插眼  上面的


    public List<Student> findStudent(Integer id) {
        String sql = "select * from Student where student_id=? ";
        try {
            return queryRunner.query(sql, new BeanListHandler<Student>(Student.class), id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public List<classroom> findClassroom() {
        String sql = "select * from classroom";
        try {
            return queryRunner.query(sql, new BeanListHandler<classroom>(classroom.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public List<classroom> findClassroom(String id) {
        String sql = "select * from classroom where classroom_id=?";
        try {
            return queryRunner.query(sql, new BeanListHandler<classroom>(classroom.class), id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }


    public List<course_selection> findCourse_selection() {
        String sql = "select * from course_selection ";
        try {
            return queryRunner.query(sql, new BeanListHandler<course_selection>(course_selection.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }


    public List<course_selection> findCourse_selection(Integer id) {
//        插眼            下面加个个or
        String sql = "select * from Course_selection where selection_id=? or student_id=?";
        try {
            return queryRunner.query(sql, new BeanListHandler<course_selection>(course_selection.class), id,id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public List<Course> findCourse() {
        String sql = "select * from Course ";
        try {
            return queryRunner.query(sql, new BeanListHandler<Course>(Course.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public List<Course> findCourse(Integer id) {
        String sql = "select * from Course where course_id=?";
        try {
            return queryRunner.query(sql, new BeanListHandler<Course>(Course.class), id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public boolean StudentDelete(Integer id) {
        String sql = "delete  student from student where student_id=?";
        try {
            int update = queryRunner.update(sql, id);
            return update > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;

    }

    public boolean ClassroomDelete(String id) {
        String sql = "delete classroom from classroom where classroom_id=?";
        try {
            int update = queryRunner.update(sql, id);
            return update > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean Course_selectDelete(String id) {
        String sql = "DELETE FROM course_selection WHERE selection_id = ?";
        try {
            int update = queryRunner.update(sql, id);
            return update > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean CourseDelete(Integer id) {
        String sql = "delete  course from course where course_id=?";
        try {
            int update = queryRunner.update(sql, id);
            return update > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


    public boolean CourseAdd(String id, String name, Integer capacity) {
        String sql = "INSERT INTO classroom (classroom_id, classroom_name,capacity) VALUES (?,?,?)";
        try {
            int update = queryRunner.update(sql, id, name, capacity);
            return update > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean ClassroomModify(String id1, String id2, String name, Integer capacity) {
        String sql = " update  classroom set classroom_id=?,classroom_name=?,capacity=? where classroom_id =? ;";
        try {
            int update = queryRunner.update(sql, id2, name, capacity, id1);
            return update > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean courseAdd(String course_id, String course_name, String credit, String teacher_id) {
        String sql = "INSERT INTO course (course_id, course_name, credit, teacher_id)\n" +
                "VALUES (?, ?, ?, ?);";
        try {
            int update = queryRunner.update(sql, Integer.parseInt(course_id),
                    course_name, Integer.parseInt(credit), Integer.parseInt(teacher_id));
            return update > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean updateCourse(Integer id, Integer course_id, String course_name, Integer credit, Integer teacher_id) {
        String sql = "update course set course_id=?,course_name=?,credit=?,teacher_id=? where course_id=?";
        try {
            int update = queryRunner.update(sql, course_id, course_name, credit, teacher_id, id);
            return update > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean studentAdd(String student_id, String studentname, String major, String student_password, String birthday, String gender) {
        String sql = "insert  into student values (?,?,?,?,?,?);";
        try {
            int update = queryRunner.update(sql, Integer.parseInt(student_id), studentname, major, student_password, birthday, gender);
            return update > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;

    }

    public boolean Studentupdate(Integer id, Integer student_id, String student_name, String major, String student_password, String birthday, String gender) {
        String sql = "update student set student_id=?,student_name=?,major=?,student_password=?,\n" +
                "                   birthday=?,gender=? where student_id=?;";
        try {
            int update = queryRunner.update(sql, student_id, student_name, major, student_password, birthday,gender, id);
            return update > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean Course_selectAdd(Integer selection_id, Integer student_id, Integer course_id, String selection_date) {
        String sql = "INSERT INTO course_selection (selection_id, student_id, course_id, selection_date)\n" +
                "VALUES (?, ?, ?, ?);";
        try {
            int update = queryRunner.update(sql, selection_id,student_id,course_id,selection_date);
            return update > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean updateCourse_select(Integer id, Integer selection_id, Integer student_id, Integer course_id, String selection_date) {
        String sql = "update course_selection set " +
                "selection_id=?,student_id=?,course_id=?,selection_date=? " +
                "where selection_id=?;";
        try {
            int update = queryRunner.update(sql, selection_id,student_id,course_id,selection_date,id);
            return update > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<Teacher> findTeacherId() {
        String sql = " select * from teacher";
        try {
            return queryRunner.query(sql, new BeanListHandler<Teacher>(Teacher.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Long getCount() {
        String sql = "select count(*) from Student ";
        try {
            return queryRunner.query(sql, new ScalarHandler<Long>());
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    //update
    //sql
}
