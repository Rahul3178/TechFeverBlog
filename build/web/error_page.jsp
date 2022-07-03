<%-- 
    Document   : error_page
    Created on : 02-Jul-2022, 6:17:36 pm
    Author     : RAHUL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry!.Something went Wrong...</title>
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
        <div class="container text-center "  style="margin-top:100px;">
            <img src="img/error.png" class="img-fluid">
            <h3 class="display-3">Sorry ! Something went wrong...</h3>
            <p><%=exception%></p>
            <a href="index.jsp" class="btn primary-background btn-lg text-white mt-3">Home</a>

        </div>
    </body>
</html>
