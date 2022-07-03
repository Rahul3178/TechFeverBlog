<%-- 
    Document   : profile
    Created on : 02-Jul-2022, 8:14:01 pm
    Author     : RAHUL
--%>
<%@page import="com.tech_fever.blog.entities.user"%>
<%
    // here we get our user details which we sets in session attribute with current_user key value pair .
    user our_user = (user) session.getAttribute("current_user");

    // session implicit object h 
    if (our_user == null) {
        response.sendRedirect("login.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <!-- Css bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="css/my.css" rel="stylesheet" type="text/css"/>
        <!-- font awesome-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--           google fonts-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--        line awesome-->
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/font-awesome-line-awesome/css/all.min.css"> 
        <style>
            .banner-background{
                clip-path: polygon(49% 0, 100% 0, 100% 92%, 73% 97%, 27% 96%, 0 91%, 0 0);
            }
        </style>
    </head>
    <body>
        <!--Navbar start-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark primary-background">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.jsp">
                    <i class="material-icons" style="font-size:18px">build</i>
                    TechFever
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">
                                <i class="material-icons" style="font-size:18px">local_library</i>
                                Code with Me
                            </a>
                        </li> 


                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="material-icons" style="font-size:18px">format_align_justify</i>
                                Categories
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Programing Languages</a></li>
                                <li><a class="dropdown-item" href="#">Projects</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">Data Structure & Algorithms</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="#"><i class="material-icons" style="font-size:18px">contact_mail</i>
                                Contact
                            </a>
                        </li>
                        
                        
                    </ul>
                    
                    <ul class="navbar-nav mr-right">
                        <li class="nav-item">
                            <a class="nav-link active" href="#"><span class="fa fa-user-circle" style="font-size:18px"></span>
                                <%=our_user.getName()%>
                            </a>
                        </li>
                       <li class="nav-item">
                            <a class="nav-link active" href="LogoutServlet"><span class="fa fa-user-times" style="font-size:18px"></span>
                                Logout
                            </a>
                        </li> 
                    </ul>
                </div>
            </div>
        </nav>

        <!--Navbar end-->

        <%= our_user.getName()%>
        <br>
        <%= our_user.getEmail()%>
        <br>
        <%= our_user.getAbout()%>


        <%-- javascript --%>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="js/my.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </body>
</html>
