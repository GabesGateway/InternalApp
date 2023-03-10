<%@ page import = "java.sql.DriverManager"%>
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "en">
    <head>
        <title>GabesGateway/Home</title>
        <meta charset = "utf-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
        <meta http-equiv='cache-control' content='no-cache'> 
        <meta http-equiv='expires' content='0'> 
        <meta http-equiv='pragma' content='no-cache'>
        <link rel="stylesheet" href="CSS-Homepage/style.css">
        <link rel="stylesheet" href="CSS-Homepage/logged-navbar.css">
        <link rel="stylesheet" href="CSS-Homepage/intro.css">
        <link rel="stylesheet" href="CSS-Homepage/body-filler.css">
        <link rel="stylesheet" href="CSS-Homepage/title.css">
        <link rel="stylesheet" href="CSS-Homepage/footer.css">
        <link rel="stylesheet" href="CSS-Homepage/news-box.css">
        <link rel="stylesheet" href="CSS-Homepage/design.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    
        <style>

.feature-box .btn-Two
{
    text-decoration: none !important;
    background-color: rgba(0,136,169,1);
    border-radius: 20px;
    padding: 10px 20px;
    margin-right: 30px;
    border: 2px solid #a669ce !important;
    color: white;
    transition: all 0.3s ease 0s;
    margin-top: 30px;
}

.feature-box .btn-Two:hover
{
    background-color: rgba(0,136,169,0.8);
}

@media(max-width: 991px)
{
  .feature-box .btn-Two
{
    margin-top: 15px;
}
}

@media(max-width: 767px)
{
  .feature-box .btn-Two
{
    margin-top: 0px;
}
}

@media(max-width: 365px)
{
  .feature-box .btn-Two
{
    margin-top: 15px;
}
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

        
 
        
        <div class="container" style="margin-top: 100px;">
          <h1 style="color: white; text-align: center;">| GabesGateway |</h1>
          <div class="wrapper">
              <div class="row">
                  <div class="col-md-6">
                      <div class="feature-box">
                          <h1>Welcome to our career page!</h1>
                          <p>Explore and Connect with others.
                              Our Community is constantly growing everyday!
                          </p>
                          <a href="profile.jsp" class="btn-One">View Profile</a>
                          <form action="logout"><input type="submit" value="Logout" class="btn-Two"></form>
                      </div>
                  </div>
                  <div class="col-md-6">
                      <img src="images/bodylog-pic.png" class="feature-img">
                  </div>
              </div>
          </div>
      </div>


      <hr style="height:2px; width:100%; border-width:0; color:rgb(255, 255, 255); background-color:rgb(255, 255, 255); margin-top: 77px;">



        <section class="services-2" id="services-2">
            <div class="service-container-2">
                <div class="s-box-2">
                    <img src="images/par-img2.png" alt="par-img" class="par-img">
                </div>
                <div class="s-box-3">
                    <h3>About</h3>
                    <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, 
                        making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, 
                        consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature.</p>
                </div>
            </div>
        </section>
        <section class="services-2" id="services-2">
            <div class="service-container-2">
                <div class="s-boxx3">
                    <h3>Culture</h3>
                    <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, 
                        making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, 
                        consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature.</p>
                </div>
                <div class="s-boxx2">
                    <img src="images/par-img.png" alt="par-img" class="par-img">
                </div>
            </div>
        </section>

        <hr style="height:2px; width:100%; border-width:0; color:rgb(255, 255, 255); background-color:rgb(255, 255, 255); margin-top: 77px;">


        <div class="hor">
        <h1 class="end-line"><span class="sp-1">Learn more below.</span></h1>
        </div>



      <section class="services" id="services">
            <div class="service-container">
                <div class="s-box">
                    <img src="images/D-1.png" alt="design-one">
                    <h3>Opportunity</h3>
                    <p>Contrary to popular belief, vh Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, 
                        making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, 
                        consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature.</p>
                </div>
                <div class="s-box" id="s-box">
                    <img src="images/D-2.png" alt="design-one">
                    <h3>Community</h3>
                    <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, 
                        making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, 
                        consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature.</p>
                </div>
                <div class="s-box" id="s-box">
                    <img src="images/D-3.png" alt="design-one">
                    <h3>Schedule</h3>
                    <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, 
                        making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, 
                        consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature.</p>
                </div>
            </div>
        </section>



       
        <div class="news-box">
            <h3>Sign up for our news letter today!</h3>
            <button class="news-btn">Sign Up</button>
        </div>

        <hr>



        <div class="back-color" style="width: 100%; background-color: #45526e;">
        <div class="container my-5">
            <!-- Footer -->
            <footer
                    class="text-center text-lg-start text-white"
                    style="background-color: #45526e;"
                    >
              <!-- Grid container -->
              <div class="container p-4 pb-0">
                <!-- Section: Links -->
                <section class="">
                  <!--Grid row-->
                  <div class="row">
                    <!-- Grid column -->
                    <div class="col-lg-3 col-lg-3 col-xl-3 mx-auto mt-3">
                      <h6 class="text-uppercase mb-4 font-weight-bold">
                        Company name
                      </h6>
                      <p>
                        Here you can use rows and columns to organize your footer
                        content. Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit.
                      </p>
                    </div>
                    <!-- Grid column -->
                    <hr class="w-100 clearfix d-md-none" />
                    <!-- Grid column -->
                    <div class="col-lg-2 col-lg-2 col-xl-2 mx-auto mt-3">
                      <h6 class="text-uppercase mb-4 font-weight-bold">Products</h6>
                      <p>
                        <a class="text-white">MDBootstrap</a>
                      </p>
                      <p>
                        <a class="text-white">MDWordPress</a>
                      </p>
                      <p>
                        <a class="text-white">BrandFlow</a>
                      </p>
                      <p>
                        <a class="text-white">Bootstrap Angular</a>
                      </p>
                    </div>
                    <!-- Grid column -->
                    <hr class="w-100 clearfix d-md-none" />
                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                      <h6 class="text-uppercase mb-4 font-weight-bold">
                        Useful links
                      </h6>
                      <p>
                        <a class="text-white">Your Account</a>
                      </p>
                      <p>
                        <a class="text-white">Become an Affiliate</a>
                      </p>
                      <p>
                        <a class="text-white">Shipping Rates</a>
                      </p>
                      <p>
                        <a class="text-white">Help</a>
                      </p>
                    </div>
                    <!-- Grid column -->
                    <hr class="w-100 clearfix d-md-none" />
                    <!-- Grid column -->
                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                      <h6 class="text-uppercase mb-4 font-weight-bold">Contact</h6>
                      <p><i class="fas fa-home mr-3"></i> New York, NY 10012, US</p>
                      <p><i class="fas fa-envelope mr-3"></i> info@gmail.com</p>
                      <p><i class="fas fa-phone mr-3"></i> + 01 234 567 88</p>
                      <p><i class="fas fa-print mr-3"></i> + 01 234 567 89</p>
                    </div>
                    <!-- Grid column -->
                  </div>
                  <!--Grid row-->
                </section>
                <!-- Section: Links -->
                <hr class="my-3">
                <!-- Section: Copyright -->
                <section class="p-3 pt-0">
                  <div class="row d-flex align-items-center">
                    <!-- Grid column -->
                    <div class="col-md-7 col-lg-8 text-center text-md-start">
                      <!-- Copyright -->
                      <div class="p-3">
                        © 2020 Copyright:
                        <a class="text-white" href="https://mdbootstrap.com/"
                           >MDBootstrap.com</a
                          >
                      </div>
                      <!-- Copyright -->
                    </div>
                    <!-- Grid column -->
                    <!-- Grid column -->
                    <div class="col-md-5 col-lg-4 ml-lg-0 text-center text-md-end">
                      <!-- Facebook -->
                      <a
                         class="btn btn-outline-light btn-floating m-1"
                         class="text-white"
                         role="button"
                         ><i class="fab fa-facebook-f"></i
                        ></a>
                      <!-- Twitter -->
                      <a
                         class="btn btn-outline-light btn-floating m-1"
                         class="text-white"
                         role="button"
                         ><i class="fab fa-twitter"></i
                        ></a>
                      <!-- Google -->
                      <a
                         class="btn btn-outline-light btn-floating m-1"
                         class="text-white"
                         role="button"
                         ><i class="fab fa-google"></i
                        ></a>
                      <!-- Instagram -->
                      <a
                         class="btn btn-outline-light btn-floating m-1"
                         class="text-white"
                         role="button"
                         ><i class="fab fa-instagram"></i
                        ></a>
                    </div>
                    <!-- Grid column -->
                  </div>
                </section>
                <!-- Section: Copyright -->
              </div>
              <!-- Grid container -->
            </footer>
            <!-- Footer -->
          </div>
        </div>


       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>    
    
    </body>

</html>