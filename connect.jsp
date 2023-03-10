    <%@ page import = "java.sql.*"%>
    <%@page import="java.util.*" %>


        <!DOCTYPE html>
    <html lang = "en">
    <head>
        <title>GabesGateway/navbar</title>
        <meta charset = "utf-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
        <meta http-equiv='cache-control' content='no-cache'> 
        <meta http-equiv='expires' content='0'> 
        <meta http-equiv='pragma' content='no-cache'>
   
        <link rel="stylesheet" href="CSS-Homepage/navbar.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    
        <style>
            .cs
            {
            color: white;
            margin: 300px auto;
            text-align: center;
            }
          
        </style>
    
    </head>
    <body style="background: #222;">

        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
            <a href="index.html" class="navbar-brand" style="font-size: 30px;">
                <img src="images/body-logo.png" alt="" height="50" style="padding-left: 20px;"> GabesGateway
            </a>
            <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#mNav">
                <span class="navbar-toggler-icon"></span>
            </button>
           <div class="collapse navbar-collapse" id="mNav">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
                <li class="nav-item dropdown">
                    <a href="login.jsp" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Inventory</a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-item">
                            <a href="login.jsp">Text</a>
                        </li>
                        <li class="dropdown-item">
                            <a href="login.jsp">Text</a>
                        </li>
                        <li class="dropdown-item">
                            <a href="login.jsp">Text</a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item"><a href="login.jsp" class="nav-link">Schedule</a></li>
                <li class="nav-item"><a href="login.jsp" class="nav-link">Sales</a></li>
                <li class="nav-item"><a href="login.jsp" class="nav-link">Contact</a></li>
                <li class="nav-item2"><a href="login.jsp" class="nav-link">Login</a></li>
            </ul>
           </div>
           <div class="btn-div"><button class="btn-1"><a href="login.jsp" style="text-decoration: none; color: white;">Login</a></button></div>
        </nav>
        <hr style="height:2px; width:100%; border-width:0; color:rgb(255, 255, 255); background-color:rgb(255, 255, 255); margin-top: 77px;">


        
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
                %>
                <h1 class="cs">Thanks For Registering!
                    <a href="login.jsp" style="text-decoration: none; color: white; text-decoration: underline; text-underline-offset: 15px; color: #0088a9;">Login</a>
                    and Explore.
                </h1>
                <%
            }else{
                out.println("Login data Failed...");

                %>
                <h1 class="cs">Registration Failed :(
                    <a href="register.html" style="text-decoration: none; color: white; text-decoration: underline; text-underline-offset: 15px; color: #0088a9;">Try Again.</a>
                </h1>
                <%
            }



            
        }catch(Exception e){
            out.println(e);
        }
        %>


      
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>    </body>
</html>

    
    
    