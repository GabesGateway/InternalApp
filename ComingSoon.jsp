<%@ page import = "java.sql.DriverManager"%>
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "en">
    <head>
        <title>GabesGateway/navbar</title>
        <meta charset = "utf-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
        <meta http-equiv='cache-control' content='no-cache'> 
        <meta http-equiv='expires' content='0'> 
        <meta http-equiv='pragma' content='no-cache'>
   
        <link rel="stylesheet" href="CSS-Homepage/logged-navbar.css">
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

        <%
        if(session.getAttribute("username")==null)
        {
          response.sendRedirect("login.jsp");
        }
        %>

        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
            <a href="welcome.jsp" class="navbar-brand" style="font-size: 30px;">  
                <img src="images/body-logo.png" alt="" height="50" style="padding-left: 20px;"> GabesGateway
            </a>
            <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#mNav">
                <span class="navbar-toggler-icon"></span>
            </button>
           <div class="collapse navbar-collapse" id="mNav">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item"><a href="welcome.jsp" class="nav-link">Home</a></li>

                <li class="nav-item dropdown">
                    <a href="ComingSoon.jsp" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Inventory</a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-item">
                            <a href="ComingSoon.jsp">Text</a>
                        </li>
                        <li class="dropdown-item">
                            <a href="ComingSoon.jsp">Text</a>
                        </li>
                        <li class="dropdown-item">
                            <a href="ComingSoon.jsp">Text</a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item"><a href="ComingSoon.jsp" class="nav-link">Schedule</a></li>
                <li class="nav-item"><a href="ComingSoon.jsp" class="nav-link">Sales</a></li>
                <li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a></li>
                <li class="nav-item2"><a href="profile.jsp" class="nav-link">View Profile</a></li>
                <li class="nav-item2"><form action="logout"><input type="submit" value="Logout"></form></li>
            </ul>
           </div>

           <div class="btn-div">
           <li class="nav-item dropdown">
            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">${FirstName}&nbsp;${LastName}</a>
            <ul class="dropdown-menu">
                <li class="dropdown-item">
                    <a href="profile.jsp">View Profile</a>
                </li>
                <li class="dropdown-item">
                    <form action="logout"><input type="submit" value="Logout" style="border: none; background-color: white; color: #0088a9;"></form>
                </li>
            </ul>
           </li>
           </div>
        </nav>
        <hr style="height:2px; width:100%; border-width:0; color:rgb(255, 255, 255); background-color:rgb(255, 255, 255); margin-top: 89px;">


        <h1 class="cs">Coming Soon! We Hope...</h1>
    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>    </body>

</html>