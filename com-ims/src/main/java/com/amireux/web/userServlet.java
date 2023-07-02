package com.amireux.web;

import com.amireux.dao.AdminDao;
import com.amireux.entity.*;
import com.amireux.service.AdminService;
import com.amireux.service.TeacherService;
import lombok.SneakyThrows;

import javax.script.Invocable;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@WebServlet(name = "user", value = "/user")
public class userServlet extends HttpServlet {
    private AdminService adminService=new AdminService();
    private TeacherService teacherService=new TeacherService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @SneakyThrows
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if(req.getSession().getAttribute("session_person")==null)req.getRequestDispatcher("/login.jsp").forward(req, resp);
        String opr = req.getParameter("opr");
        if (opr.equals("login")) {
//            System.out.println("登录了");
            String username = req.getParameter("username");
            String password = req.getParameter("password");
            Integer type = Integer.parseInt(req.getParameter("num"));
            login(req,resp,username,password,type);
        }



        //更新选课

            //所有的选课（完成）
            if (opr.equals("course_select")) {
                findCourse_selection(req, resp);
            }
            //添加选课（写完了）
            if (opr.equals("course_selectadd")) {
                course_selectadd(req, resp);
            }
            //删除选课（完成）
            if(opr.equals("Course_selectDelete")){Course_selectDelete(req,resp);}

            //修改选课（完成）
            if (opr.equals("Course_selectModify")) {
                Course_selectmodify(req, resp);
            }
            //更新选课（完成）
            if (opr.equals("updateCourse_select")) {
                updateCourse_select(req, resp);
            }

        //学生

            //所有的学生(写了)
                if (opr.equals("studentAdmin")) {
                findStudent(req, resp);
            }
            //添加学生(写了)
            if (opr.equals("studentadd")) {
                studentadd(req, resp);
            }
            //修改学生（写了）
            if(opr.equals("StudentModify")){
                StudentModify(req,resp);
            }
            //删除学生（写完了）
            if(opr.equals("StudentDelete")){
                StudentDelete(req,resp);
            }
            //更新学生（写了）
            if (opr.equals("updatestudent")) {
                updateStudent(req, resp);
            }


        //教室(写完)

            //所有的教室（写了）
            if (opr.equals("classroomAdmin")) {
                findClassroom(req, resp);
            }
            //添加教室（写了）
            if (opr.equals("classroomadd")) {
                classroomadd(req, resp);
            }
            //删除教室（写了）
            if (opr.equals("ClassroomDelete")) {
                ClassroomDelete(req, resp);
            }
            //修改教室（写了）
            if (opr.equals("ClassroomModify")) {
                classroommodify(req, resp);
            }
            //更新教室（写了）
            if (opr.equals("updateClassroom")) {
                updateClassroom(req, resp);
            }


        //课程，已写完

            //所有的课程（写完）
            if (opr.equals("courseAdmin")) {
                findCourse(req, resp);
            }
            //添加课程（写完）
            if (opr.equals("courseadd")) {
                courseadd(req, resp);
            }
            //删除课程（写完）
            if (opr.equals("CourseDelete")) {
                CourseDelete(req, resp);
            }
            //修改课程(写完)
            if (opr.equals("CourseModify")) {
                coursemodify(req, resp);
            }
            //更新课程（写完）
            if (opr.equals("updatecourse")) {
                updateCourse(req, resp);
            }







       //教师的
        if(opr.equals("information")){findinformation(req,resp);}
        if(opr.equals("modifyGrade")){GradeModify(req,resp);}
        if(opr.equals("Grademodify")){updateGrade(req,resp);}


    }

    //添加选课
    private void course_selectadd(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
        String selection_id=req.getParameter("selection_id");
        String student_id=req.getParameter("student_id");
        String course_id=req.getParameter("course_id");
        String selection_date=req.getParameter("selection_date");
        selection_date+=" 00:00:00";
       // adminService.courseAdd(course_id,course_name,credit,teacher_id);
       boolean flag= adminService.Course_selectAdd(Integer.parseInt(selection_id),Integer.parseInt(student_id),Integer.parseInt(course_id),selection_date);
       if(flag) System.out.println("添加成功");
       else System.out.println("添加失败");
        findCourse_selection(req,resp);



    }


    //添加课程
    private void courseadd(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException, ScriptException, NoSuchMethodException  {
        String course_id=req.getParameter("course_id");
        String course_name=req.getParameter("course_name");
        String credit=req.getParameter("credit");
        String teacher_id=req.getParameter("teacher_id");
     boolean flag =adminService.courseAdd(course_id,course_name,credit,teacher_id);
         if(flag) System.out.println("添加课程成功");
         else System.out.println("添加课程失败");
       findCourse(req,resp);

    }
    //修改课程
    private void coursemodify(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, ScriptException, NoSuchMethodException{
        String id=req.getParameter("id");
        List<Course> Course1= adminService.findCourse(Integer.parseInt(id));
        Course course= Course1.get(0);
        req.setAttribute("course",course);
        req.getRequestDispatcher("/updatecourse.jsp").forward(req,resp);
    }
    //更新课程
    private void updateCourse(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, ScriptException, NoSuchMethodException{
        String id=req.getParameter("id");
        String Course_id=req.getParameter("Course_id");
        String Course_name=req.getParameter("Course_name");
        String Credit=req.getParameter("Credit");
        String Teacher_id=req.getParameter("Teacher_id");

        boolean flag=adminService.updateCourse(Integer.parseInt(id),Integer.parseInt(Course_id),Course_name,Integer.parseInt(Credit),Integer.parseInt(Teacher_id));
//        if(flag)
//        {
//            resp.setCharacterEncoding("gbk");
//            PrintWriter out=resp.getWriter();
//            out.print("<script>alert('更新课程成功')</script>");
//            out.flush();
//            System.out.println("更新课程成功");
//
//        }
//        else
//        {  resp.setCharacterEncoding("gbk");
//            PrintWriter out=resp.getWriter();
//            out.print("<script>alert('更新课程失败')</script>");
//            out.flush();
//            System.out.println("更新课程失败");
//        }
        findCourse(req,resp);
    }
    //删除课程
    private void CourseDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, ScriptException, NoSuchMethodException {


        String id=req.getParameter("id");
        boolean flag=adminService.CourseDelete(Integer.parseInt(id));
//        if(flag)
//        {
//            resp.setCharacterEncoding("gbk");
//            PrintWriter out=resp.getWriter();
//            out.print("<script>alert('删除课程成功')</script>");
//            out.flush();
//            System.out.println("删除课程成功");
//
//        }
//        else
//        {  resp.setCharacterEncoding("gbk");
//            PrintWriter out=resp.getWriter();
//            out.print("<script>alert('删除课程失败')</script>");
//            out.flush();
//            System.out.println("删除课程失败");
//        }


        findCourse(req,resp);
    }



    //修改选课
    private void Course_selectmodify(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, ScriptException, NoSuchMethodException{
        String id=req.getParameter("id");
    List<course_selection> Course_select1= adminService.findCourse_selection(Integer.parseInt(id));
        course_selection Course_select= Course_select1.get(0);
        req.setAttribute("Course_select",Course_select);
        req.getRequestDispatcher("/updateSelect_course.jsp").forward(req,resp);
    }
    //更新选课
    private void updateCourse_select(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, ScriptException, NoSuchMethodException{
        String id=req.getParameter("id");
        String Selection_id=req.getParameter("Selection_id");
        String Student_id=req.getParameter("Student_id");
        String Course_id=req.getParameter("Course_id");
        String Selection_date=req.getParameter("Selection_date");



        boolean flag=adminService.updateCourse_select(Integer.parseInt(id),
                Integer.parseInt(Selection_id),Integer.parseInt(Student_id),Integer.parseInt(Course_id),
                Selection_date);
        if(flag) System.out.println("修改选课成功");
        else System.out.println("修改选课失败");

        findCourse_selection(req,resp);
    }
    //删除选课
    private void Course_selectDelete(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
        String id=req.getParameter("id");
        boolean flag=adminService.Course_selectDelete(id);
        if(flag) System.out.println("删除成功");
        else System.out.println("删除失败");
        findCourse_selection(req,resp);
    }


  //添加教室
    private void classroomadd(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException, ScriptException, NoSuchMethodException  {
        String id=req.getParameter("classroom_id");
        String name=req.getParameter("classroomname");
        String capacity=req.getParameter("capacity");

        boolean flag=adminService.ClassroomAdd(id,name,Integer.parseInt(capacity));
        if(flag) System.out.println("添加教室成功");
        else System.out.println("添加教室失败");
        findClassroom(req,resp);
    }
  //修改教室
    private void classroommodify(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, ScriptException, NoSuchMethodException{
        String id=req.getParameter("id");
        List<classroom> classroom1= adminService.findClassroom(id);
        classroom classroom= classroom1.get(0);
        req.setAttribute("classroom",classroom);
        req.getRequestDispatcher("/updateClassroom.jsp").forward(req,resp);
    }
    //更新教室
    private void updateClassroom(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, ScriptException, NoSuchMethodException{
        String id=req.getParameter("id");
        String classroom_id=req.getParameter("classroom_id");
        String classroom_name=req.getParameter("classroom_name");
        String capacity=req.getParameter("capacity");

        boolean flag=adminService.ClassroomModify(id,classroom_id,classroom_name,Integer.parseInt(capacity));
        if(flag) System.out.println("更新教室成功");
        else System.out.println("更新教室失败");
//        if(flag)
//        {
//            resp.setCharacterEncoding("gbk");
//            PrintWriter out=resp.getWriter();
//            out.print("<script>alert('更新教室成功')</script>");
//            out.flush();
//            System.out.println("更新教室成功");
//
//        }
//        else
//        {  resp.setCharacterEncoding("gbk");
//            PrintWriter out=resp.getWriter();
//            out.print("<script>alert('更新教室失败')</script>");
//            out.flush();
//            System.out.println("更新教室失败");
//        }
        findClassroom(req,resp);
    }
    //删除教室
    private void ClassroomDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        String id=req.getParameter("id");
        boolean flag=adminService.ClassroomDelete(id);
        if(flag) System.out.println("删除教室成功");
        else System.out.println("删除教室失败");
        findClassroom(req,resp);
    }


    //更新学生
    private void updateStudent(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, ScriptException, NoSuchMethodException{
        String id=req.getParameter("id");
        String student_id=req.getParameter("Student_id");
//        String classroom_name=req.getParameter("classroom_name");
        String student_name=req.getParameter("Student_name");
        String major=req.getParameter("Major");
        String student_password=req.getParameter("Student_password");
        String birthday=req.getParameter("Birthday");
        String gender=req.getParameter("Gender");
        boolean flag= adminService.Studentupdate(Integer.parseInt(id),Integer.parseInt(student_id),
                    student_name,major,   student_password,  birthday,gender);
        if(flag) System.out.println("更新学生成功");
        else System.out.println("更新学生失败");
//        boolean flag=adminService.ClassroomModify(id,classroom_id,classroom_name,Integer.parseInt(capacity));

        findStudent(req,resp);
    }


    //修改学生
    private void updateGrade(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        String id=req.getParameter("id");
        String g=req.getParameter("grade");
        boolean flag=teacherService.Grademodify(Integer.parseInt(id),Integer.parseInt(g));
        if(flag) System.out.println("修改学生成功");
        else System.out.println("修改学生失败");
        findinformation(req,resp);
    }
    //删除学生
    private  void StudentDelete(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{

        String id=req.getParameter("id");
        boolean flag=adminService.StudentDelete(Integer.parseInt(id));
        if(flag) System.out.println("删除学生成功");
        else System.out.println("删除学生失败");
        findStudent(req,resp);
    }
    //添加学生
    private void studentadd(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException, ScriptException, NoSuchMethodException  {
        String student_id=req.getParameter("student_id");
        String studentname=req.getParameter("studentname");
        String major=req.getParameter("major");
        String student_password=req.getParameter("student_password");
        String birthday=req.getParameter("birthday");
        birthday+=" 00:00:00";
        String gender=req.getParameter("gender");
//        adminService.courseAdd(course_id,course_name,credit,teacher_id);
        boolean flag= adminService.studentAdd(student_id,studentname,major,student_password,birthday,gender);
        if(flag) System.out.println("添加学生成功");
        else System.out.println("添加失败");
        findStudent(req,resp);
    }
    //修改学生
    private void StudentModify(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
//        req.getRequestDispatcher("/ModifyStudent.jsp").forward(req, resp);
        String id=req.getParameter("id");
        List<Student> student1 = adminService.findStudent(Integer.parseInt(id));
        Student student=student1.get(0);

        req.setAttribute("student",student);
        req.getRequestDispatcher("/updateStudent.jsp").forward(req,resp);





    }


    //登录
    private void login(HttpServletRequest req, HttpServletResponse resp, String username, String password, Integer type) throws ServletException, IOException {

//        if(req.getSession().getAttribute("session_person") == null) req.getRequestDispatcher("/login.jsp").forward(req, resp);
        if(type==0)//开始判断账号密码  学生判断
        {

        }
        else if(type==1)//管理员判断
        {

            Admin admin = adminService.getAdminByUserId(Integer.parseInt(username));
            if(admin!=null)//有此人
            {
                if (!admin.getAdmin_password().equals(password)) {
                    req.setAttribute("error", "密码不正确");
                    req.getRequestDispatcher("/login.jsp").forward(req, resp);
                } else {
                    //用session把这个user对象装起来，在页面上通过这个Session去
                    System.out.println("密码对啦");
//                    user.setUserName(admin.getAdmin_name(),admin.getAdmin_password());

                    User user = new User(type, admin.getAdmin_name(), password);

                    req.getSession().setAttribute("session_person", user);
                    req.getSession().setAttribute("number", new Random().nextInt(12)+1);
                    req.getRequestDispatcher("/blank.jsp").forward(req, resp);
                }
            }
            else //查无此人
            {
                req.setAttribute("ERROR", "用户名不正确");
                req.getRequestDispatcher("/login.jsp").forward(req, resp);
            }
        }
        else  if(type==2)//教师
        {

            Teacher teacher = teacherService.getTeacherByUserId(Integer.parseInt(username));
            if(teacher!=null)//有此人
            {
                if (!teacher.getTeacher_password().equals(password)) {
                    req.setAttribute("error", "密码不正确");
                    req.getRequestDispatcher("/login.jsp").forward(req, resp);
                } else {
                    //用session把这个user对象装起来，在页面上通过这个Session去
                    System.out.println("密码对啦");
//                    user.setUserName(admin.getAdmin_name(),admin.getAdmin_password());

                    User user = new User(type, teacher.getTeacher_name(), password);

                    req.getSession().setAttribute("session_person", user);
                    req.getSession().setAttribute("number", new Random().nextInt(12)+1);
                    req.getRequestDispatcher("/blank.jsp").forward(req, resp);
                }
            }
            else //查无此人
            {
                req.setAttribute("ERROR", "用户名不正确");
                req.getRequestDispatcher("/login.jsp").forward(req, resp);
            }


        }

    }
    //查询选课内容
    private void findCourse_selection(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException  {

      String queryid=req.getParameter("queryCourseId");
        List<course_selection> course_selection=new ArrayList<>();
      if(queryid!=null) course_selection = adminService.findCourse_selection(Integer.parseInt(queryid));
      else  course_selection = adminService.findCourse_selection();

        req.setAttribute("flag",">>选课记录");
        req.setAttribute("course_selection", course_selection);
        req.getRequestDispatcher("/StudentCourse_select.jsp").forward(req, resp);


    }
   //查询学生信息
    private void findStudent(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException  {
        String queryname = req.getParameter("queryname");
        //modify ==66   userid=30
        List<Student> student=new ArrayList<>();



        //---------------------分页
        String pageIndex = req.getParameter("pageIndex");
        if(pageIndex == null || pageIndex.equals("0")){
            pageIndex = "1";
        }
        //每页大小是5
            int pageSize = 5;
        int totalPages = 0;
        //查询符合条件的记录数
        Long count = adminService.getCount();
        int totalCount = Integer.parseInt(count+"");
        if(totalCount % pageSize == 0){
            totalPages = totalCount/pageSize;
        }else{
            totalPages = totalCount/pageSize + 1;
        }
        //控制尾页
        int currentIndex = Integer.parseInt(pageIndex);
        if(currentIndex > totalPages ){
            currentIndex = totalPages;
//        插眼    解决当前的页数跳到第三页
            pageIndex=currentIndex+"";
        }



        //--------------------  插眼

        if(queryname!=null) student = adminService.findStudent(Integer.parseInt(queryname));
         // else student = adminService.findStudent();
       else student =adminService.findStudent(pageIndex,pageSize+"");
//        插眼   上面这行 还有下面
        //装记录数
        req.setAttribute("pages",totalPages);
        //当前页
        req.setAttribute("currentPage",currentIndex);

//        插眼
        req.setAttribute("flag",">>学生管理");
        req.setAttribute("studentShow", student);
        req.getRequestDispatcher("/StudentAdmin.jsp").forward(req, resp);
    }
    //查询上课班级
    private void findClassroom(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException  {
        String query=req.getParameter("queryclassroomname");
        //query=C301
        List<classroom> classroom=new ArrayList<>();
        if(query!=null) classroom = adminService.findClassroom(query);
         else classroom = adminService.findClassroom();

        req.setAttribute("flag",">>教室管理");
        req.setAttribute("classroomShow", classroom);
        req.getRequestDispatcher("/ClassroomAdmin.jsp").forward(req, resp);


    }
    //查询课程
    private void findCourse(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException  {

        String queryid=req.getParameter("queryCourse");
        List<Course> course=new ArrayList<>();
        if(queryid!=null) course=adminService.findCourse(Integer.parseInt(queryid));
        else course = adminService.findCourse();
        List<Teacher> teacher=adminService.findTeacherId();
        req.setAttribute("teacher",teacher);
        req.setAttribute("flag",">>课程管理");
            req.setAttribute("courseShow", course);
            req.getRequestDispatcher("/CourseAdmin.jsp").forward(req, resp);

    }
    //查询信息
    private void findinformation(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        TeacherService teacherService = new TeacherService();
        List<Information> information = teacherService.findinformation();
        req.setAttribute("information", information);
        req.getRequestDispatcher("/information.jsp").forward(req, resp);
    }
//------------------------------------------------------------



    //教师
    //更新成绩
    private void GradeModify (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, ScriptException, NoSuchMethodException, SQLException {



//        classroom classroom= classroom1.get(0);

//        req.getRequestDispatcher("/updateClassroom.jsp").forward(req,resp);


        String id=req.getParameter("id");

        // Information information = teacherService.findinformation(Integer.parseInt(id));
        Information information=  teacherService.findinformation(Integer.parseInt(id));

        req.setAttribute("information",information);
        req.getRequestDispatcher("/modifyGrade.jsp").forward(req,resp);



    }









}
