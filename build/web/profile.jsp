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
    </head>
    <body>
        <h1>Profile</h1>
        <%= our_user.getName()%>
        <br>
        <%= our_user.getEmail()%>
        <br>
        <%= our_user.getAbout()%>
    </body>
</html>
