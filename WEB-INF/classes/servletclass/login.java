package servletclass;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.ServletException;
import java.io.PrintWriter;
import javax.servlet.http.HttpSession;
import java.sql.*;

public class login extends HttpServlet{

    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{

        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");

        PrintWriter out=response.getWriter();

        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
        Statement st = con.createStatement();
        String str = "select * from login";
        ResultSet rs = st.executeQuery(str);  

        int EmpID = -1;
        String username = "";
        String password = "";
        while(rs.next())
        {
            username = rs.getString("Username");
            password = rs.getString("password");
            if(uname.equals(username) && pass.equals(password))
            {
             EmpID=rs.getInt("EmpID");
            }
        }

        String firstName = "";
        String lastName = "";
        String email = "";
        String address = "";
        String phone = "";
        if(EmpID!=-1)
        {
            Statement st2 = con.createStatement();
            String s = "select * from employee where EmpID='"+EmpID+"' ";
            ResultSet rs2 = st2.executeQuery(s);  

            while(rs2.next())
            {
                firstName=rs2.getString("Fname");
                lastName=rs2.getString("Lname");
                email=rs2.getString("Email");
                address=rs2.getString("Address");
                phone=rs2.getString("Phone");
            }

            HttpSession session = request.getSession();
            session.setAttribute("username", uname);
            session.setAttribute("password", pass);
            session.setAttribute("FirstName", firstName);
            session.setAttribute("LastName", lastName);
            session.setAttribute("Email", email);
            session.setAttribute("Address", address);
            session.setAttribute("PhoneNumber", phone);
            response.sendRedirect("welcome.jsp");

        }
        else
        {
            response.sendRedirect("login.jsp");
        }

        }catch(Exception p){
            System.out.println(p);
        }

    }
}