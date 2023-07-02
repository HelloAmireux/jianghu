package cmstu.servlet;

import cmstu.bean.Person;
import cmstu.service.ManageService;
import cmstu.service.ManageServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/man.action")
public class ManageServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action=req.getParameter("action");
        ManageService ms = new ManageServiceImpl();
        if(action.equals("list")){
            List<Person> arr=ms.getAllPerson();
            req.setAttribute("arr",arr);
            req.setAttribute("mainRignt","person.jsp");
            req.getRequestDispatcher("main.jsp").forward(req,resp);
        }
    }
}
