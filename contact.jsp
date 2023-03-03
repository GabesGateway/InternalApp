<%@ page import = "java.sql.DriverManager"%>
<%@ page import = "java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP page</title>
        <style>

          body{
        background-color: aliceblue;
        }
      

        </style>
    </head>
    <body>
        <center>       
             <h1>Employees</h1>
        </center>

        <Center>
        <table border="1">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone Number</th>
            </tr>
        <%

            try{
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            Statement st = con.createStatement();
            
            String str = "select * from employee";
            ResultSet rs = st.executeQuery(str);  

            while(rs.next()){
             %>
             <tr>
                <td class="tag"><%=rs.getString("Fname")%></td>
                <td><%=rs.getString("Lname")%></td>
                <td><%=rs.getString("Email")%></td>
                <td><%=rs.getString("Phone")%></td>
             </tr>
             <%  }

            }catch(Exception e) {
            
            }
        %>

       </Center>
    </body>
</html>