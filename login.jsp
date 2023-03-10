<%@ page import = "java.sql.DriverManager"%>
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "en">
    <head>
        <title>GabesGateway/Login</title>
        <meta charset = "utf-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
        <meta http-equiv='cache-control' content='no-cache'> 
        <meta http-equiv='expires' content='0'> 
        <meta http-equiv='pragma' content='no-cache'>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
        <link rel="stylesheet" href="CSS-LoginPage/log.css">

        <style>

            .title a
            {
            text-decoration: none;
            color: white;
            }

            .title2 a
            {
            text-decoration: none;
            color: white;
            }


        </style>
    </head>
    <body>
        <h1 class="title2"><a href="index.html">GabesGateway</a></h1>
        <div class="container">
            <h1 class="title"> <a href="index.html">GabesGateway</a></h1>
            <div class="login">
                <div class="content">
                    <img src="images/Login.png">
                </div>
                <div class="loginform">
                    <h1>Login</h1>
                    <form action="mywelcomeservlet">
                        <div class="tbox">
                            <i class="fa fa-user"></i><input type="text" name="uname" placeholder="Enter Username.....">
                        </div>
                        <div class="tbox">
                            <i class="fa fa-lock"></i><input type="password" name="pass" placeholder="Enter Password.....">
                        </div>
                        <input class="btn" type="submit">
                    </form>
                    <a href="register.html" class="link-1">Don't have an account? Register Now!</a>
                    <ul class="social">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    </ul>
                </div>
            </div>
        </div>
    
    </body>

</html>