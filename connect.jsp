    <%@ page import = "java.sql.*"%>
    <%@page import="java.util.*" %>

        <%
        String Fname = request.getParameter("firstName");
        String Lname = request.getParameter("lastName");
        String Email = request.getParameter("email");
        String Address = request.getParameter("address");
        String Phone = request.getParameter("number");
        Random rand = new Random();
        int TimesheetID = rand.nextInt(1) + 5;
        int WarehouseID = 1;

       
        

    
        try{

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");

            PreparedStatement ps = conn.prepareStatement("insert into employee(Fname, Lname, Email, Address, Phone, TimesheetID, WarehouseID) values(?,?,?,?,?,?,?);");
            ps.setString(1,Fname);
            ps.setString(2,Lname);
            ps.setString(3,Email);
            ps.setString(4,Address);
            ps.setString(5,Phone);
            ps.setInt(6,TimesheetID);
            ps.setInt(7,WarehouseID);
            int x = ps.executeUpdate();
            if(x > 0){
                out.println("Registration done successfully...");
            }else{
                out.println("Registration Failed...");
            }



            String Username = request.getParameter("username");
            String password = request.getParameter("password");

            Statement st = conn.createStatement();
            String str = "select * from employee where Fname='"+Fname+"' ";
            ResultSet rs = st.executeQuery(str);  

            int EmpID = 0;
            while(rs.next()){
            EmpID=rs.getInt("EmpID");
            }




            PreparedStatement pss = conn.prepareStatement("insert into login(Username, password, EmpID) values(?,?,?);");
            pss.setString(1,Username);
            pss.setString(2,password);
            pss.setInt(3,EmpID);
            int x2 = pss.executeUpdate();
            if(x2 > 0){
                out.println("Login data done successfully...");
            }else{
                out.println("Login data Failed...");
            }



            
        }catch(Exception e){
            out.println(e);
        }
        %>

    
    
    