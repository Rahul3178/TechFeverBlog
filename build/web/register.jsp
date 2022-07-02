<%-- 
   Document   : register
   Created on : 02-Jul-2022, 11:08:55 am
   Author     : RAHUL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registeration</title>
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

        <main class="primary-background p-5  banner-background">
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header text-center">
                            <span class="fa fa-user-plus fa-3x"></span>
                            <br>
                            <p>Regestered here</p>
                        </div>
                        <div class="card-body">
                            <form action="RegisterServlet" method="POST" id="reg-form">
                                <div class="mb-3">
                                    <label for="user_name" class="form-label">User Name</label>
                                    <input type="text" class="form-control" id="user_name" name="user_name" placeholder="Enter Name ..." aria-describedby="emailHelp">

                                </div>
                                <div class="mb-3">
                                    <label for="user_email" class="form-label">Email address</label>
                                    <input type="email" name="user_email" class="form-control" placeholder="Enter Email ..."
                                           id="user_email" aria-describedby="emailHelp">

                                </div>
                                <div class="mb-3">
                                    <label for="password" class="form-label"  >Password </label>
                                    <input type="password" name="user_password" class="form-control" placeholder="Enter Password ..." id="password">
                                </div>
                                <div class="mb-3">
                                    <label for="Gender" class="form-label">Select Gender</label> &nbsp;&nbsp;
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="user_gender" id="inlineRadio1" value="Male">
                                        <label class="form-check-label" for="inlineRadio1">Male</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="user_gender" id="inlineRadio2" value="Female">
                                        <label class="form-check-label" for="inlineRadio2">Female</label>
                                    </div>

                                </div>
                                <div class="mb-3">
                                    <textarea class="form-control " name="user_about"   rows="5" placeholder="Enter something about yourself"> </textarea>
                                </div>
                                <div class="mb-3 form-check">
                                    <input type="checkbox" name="check" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Accept terms and conditions</label>
                                </div>
                                <br>
                                <div class="container text-center " style="display:none;" id="loadder">
                                    <span class="fa fa-refresh fa-3x fa-spin"></span>
                                </div>
                                <div class="container text-center">
                                    <button type="submit" class="btn btn-outline-success btn-lg" id="submit-button">Sign up</button>
                                </div>
                            </form>
                        </div>

                    </div>


                </div>
            </div>
        </main>

        <%-- javascript --%>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="js/my.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <!--        // sweet aleart-->
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function ()
            {
                console.log("Jquery/Java Script loading");

                $('#reg-form').on('submit', function (event)
                {
                    console.log("function lodded");
                    event.preventDefault();

                    $('#loadder').show();
                    $('#submit-button').hide();
                    $.ajax({
                        url: "RegisterServlet",
                        data: new FormData(this),
                        type: 'POST',
                        processData: false,
                        contentType: false,
                        success: function (data, textStatus, jqXHR)
                        {
                            console.log(data);
                            $('#loadder').hide();
                            $('#submit-button').show();
                            if (data.trim() === 'success')
                            {
                                swal("Successfully registered... We are going to redirect to login page.")
                                        .then((value) => {
                                            window.location = "login.jsp"
                                        });
                            } else
                            {
                                swal(data);
                            }

                        },
                        error: function (jqXHR, textStatus, errorThrown)
                        {
                            console.log(jqXHR);
                            $('#loadder').hide();
                            $('#submit-button').show();
                            swal("Something went wrong....try again.");

                        }

                    });



                });



            });

        </script>
    </body>
</html>
