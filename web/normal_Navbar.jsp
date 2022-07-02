<%-- 
    Document   : normal_Navbar
    Created on : 30-Jun-2022, 7:07:59 pm
    Author     : RAHUL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--<link href="css/my.css" rel="stylesheet" type="text/css"/>-->
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
                <li class="nav-item">
                    <a class="nav-link active" href="login.jsp"><span class="fa fa-user" style="font-size:18px"></span>
                        Login
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="register.jsp"><span class="fa fa-user-plus" style="font-size:18px"></span>
                        Signup
                    </a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
