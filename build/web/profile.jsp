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
                            <a class="nav-link active" href="#!"  data-bs-toggle="modal" data-bs-target="#profile-modal"><span class="fa fa-user-circle" style="font-size:18px"></span>
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
        <!-- Start profile details of a user -->
        <!-- Button trigger modal -->
        <!-- Modal -->
        <div class="modal fade" id="profile-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header primary-background text-white">
                        <i class="material-icons" style="font-size:18px">build</i> &nbsp;
                        <h5 class="modal-title" id="exampleModalLabel">TechFeverBlog</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="container text-center">
                            <!--profile pic-->
                            <img src="img/<%=our_user.getProfile()%>"/>
                            <h5 class="modal-title" id="exampleModalLabel"><%= our_user.getName()%></h5>
                            <!--//details of user-->
                            <div id="profile-details" style="">                              
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <th scope="row">ID :</th>
                                            <td><%= our_user.getId()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Email :</th>
                                            <td><%= our_user.getEmail()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Gender :</th>
                                            <td><%= our_user.getGender()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">About :</th>
                                            <td><%= our_user.getAbout()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Registered on :</th>
                                            <td><%= our_user.getDateTime().toString()%></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!--details Edit-->
                            <div id="profile-edit" style="display:none;">
                                <h4 class="mt-2 alert-warning">Please Edit carefully...</h4>
                                <form action="EditProfileServlet" method="POST" enctype="multipart/form-data">
                                    <table class="table">
                                        <tr>
                                            <td>ID:</td>
                                            <td><%=our_user.getId()%></td>
                                        </tr>
                                        <tr>
                                            <td>Name:</td>
                                            <td><input type="text" class="form-control" name="user_name" value="<%=our_user.getName()%>"/></td>
                                        </tr>
                                        <tr>
                                            <td>Password:</td>
                                            <td><input type="password" class="form-control" name="user_password" value="<%=our_user.getPassword()%>"/></td>
                                        </tr>
                                        <tr>
                                            <td>Email:</td>
                                            <td><input type="email" class="form-control" name="user_email" value="<%=our_user.getEmail()%>"/></td>
                                        </tr>
                                        <tr>
                                            <td>Gender:</td>
                                            <td><%=our_user.getGender().toUpperCase()%></td>
                                        </tr>
                                        <tr>
                                            <td>About:</td>
                                            <td><textarea class="form-control" name="user_about" rows="3" ><%=our_user.getAbout()%></textarea></td>
                                        </tr>
                                        <tr>
                                            <td>Profile pic:</td>
                                            <td><input type="file" class="form-control" name="image"/></td>
                                        </tr>
                                    </table>
                                            <div class="container">
                                                <button class="btn btn-outline-success btn-lg">Save</button>
                                            </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">

                        <button type="button" class="btn btn-secondary btn-lg" data-bs-dismiss="modal">Close</button>

                        <button type="button" id="edit-profile-button" class="btn btn-primary btn-lg">
                            <span class="fa fa-edit"></span>
                            Edit
                        </button>

                    </div>
                </div>
            </div>
        </div>
        <!-- end profile details of a user -->

        <%-- javascript --%>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="js/my.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script>
            $(document).ready(function () {
                console.log("ready");
                 // toggle  b/w edit or not edit for this purpose we need toggle 
                   let editStatus=false;
                $('#edit-profile-button').click(function () {
                   
                if(editStatus == false)
                {
                   // hide profile-details and show edit profile
                  $('#profile-details').hide();
                  $('#profile-edit').show(); 
                  editStatus=true;
                  $(this).text("Back");
                }
                else
                {
                    // hide profile-details and show edit profile
                  $('#profile-details').show();
                  $('#profile-edit').hide();
                  editStatus=false;
                  $(this).text("Edit");
                  
                }
                  
                });
            });
        </script>
    </body>
</html>
