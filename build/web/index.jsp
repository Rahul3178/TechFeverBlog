
<%@page import="com.tech_fever.blog.helper.Connection_Provider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
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
        <!--navbar-->
        <%@include file="normal_Navbar.jsp" %>
        <!--banner-->

        <div class="container-fluid  p-0 m-0">
            <div class="jumbotron jumbotron-fluid primary-background text-white banner-background">
                <div class="container p-2"  style="height:300px">
                    <h3 class="display-3 ">Welcome to My Blog</h3>
                    <p class="lead"> A programming language is any set of rules that converts strings, or graphical program elements in the case of visual programming languages, to various kinds of machine code output.[citation needed] Programming languages are one kind of computer language, and are used in computer programming to implement algorithms.
                    </p>

                    <a class="btn btn-outline-success text-white btn-lg" href="register.jsp">
                        <span class="fa fa-user-plus"></span>
                        Start! it's Free
                    </a> 
                    &nbsp; &nbsp;
                    <a class="btn btn-outline-success text-white btn-lg" href="login.jsp">
                        <span class="fa fa-user"></span>
                        Login
                    </a> 
                </div>
            </div>
        </div>

        <!--//cards-->
        <div class="container mt-3">
            <div class="row mb-3">
                <div class="col-md-4">
                    <div class="card" style="">

                        <div class="card-body">
                            <h5 class="card-title">Java Programing</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background">Read More...</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" style="">

                        <div class="card-body">
                            <h5 class="card-title">Java Programing</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background">Read More...</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" style="">

                        <div class="card-body">
                            <h5 class="card-title">Java Programing</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background">Read More...</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row m-3b">
                <div class="col-md-4">
                    <div class="card" style="">

                        <div class="card-body">
                            <h5 class="card-title">Java Programing</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background">Read More...</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" style="">

                        <div class="card-body">
                            <h5 class="card-title">Java Programing</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background">Read More...</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" style="">

                        <div class="card-body">
                            <h5 class="card-title">Java Programing</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background">Read More...</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%-- javascript --%>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="js/my.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </body>
</html>
