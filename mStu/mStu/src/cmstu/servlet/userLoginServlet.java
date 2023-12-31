package cmstu.servlet;

import cmstu.bean.Person;
import cmstu.service.UserLoginService;
import cmstu.service.UserLoginServiceImpl;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet("/login")
public class userLoginServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String userAccount = req.getParameter("userAccount");
        String userPassword = req.getParameter("userPassword");
        Person person=new Person(userAccount,userPassword);
        UserLoginService ul = new UserLoginServiceImpl();
        Person newPerson =ul.getLogin(person);
        if (newPerson!=null)
        {
            HttpSession session = req.getSession();
            session.setAttribute("session_person",newPerson);
            req.setAttribute("mainRignt","blank.jsp");
            req.getRequestDispatcher("main.jsp").forward(req,resp);
        }
        else{

            req.setAttribute("tip", "账号密码错误");
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
    }
}