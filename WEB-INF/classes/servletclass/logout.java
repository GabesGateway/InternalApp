package servletclass;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.ServletException;
import java.io.PrintWriter;
import javax.servlet.http.HttpSession;


public class logout extends HttpServlet{

    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
        HttpSession session = request.getSession();
        session.removeAttribute("username");
        session.removeAttribute("password");
        session.removeAttribute("FirstName");
        session.removeAttribute("LastName");
        session.removeAttribute("Email");
        session.removeAttribute("Address");
        session.removeAttribute("PhoneNumber");
        session.invalidate();
        response.sendRedirect("login.jsp");
    }
}