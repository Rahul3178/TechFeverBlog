/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.tech_fever.blog.servlets;

import com.tech_fever.blog.dao.Userdao;
import com.tech_fever.blog.entities.message;
import com.tech_fever.blog.entities.user;
import com.tech_fever.blog.helper.Connection_Provider;
import com.tech_fever.blog.helper.Helper;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author RAHUL
 */
@MultipartConfig
public class EditProfileServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* fetch all data */
            
                
                String password=request.getParameter("user_password");
                // fetch image or file from form 
                Part snap=request.getPart("image");
                String imageName=snap.getSubmittedFileName();
                
            
                // fetch the current user form session object which logged in login  servlet.
                HttpSession s=request.getSession();
                // now we can get our user from session
              user update_user=(user)s.getAttribute("current_user");
              // now we can assign new values to our updated_user which we got profile edit form  
              update_user.setName(request.getParameter("user_name"));
              update_user.setPassword(request.getParameter("user_password"));
              update_user.setEmail(request.getParameter("user_email"));
              update_user.setAbout(request.getParameter("user_about"));
              update_user.setProfile(imageName);
              
              // now we have to insert data into db using dao class function updateuser.
              Userdao dao=new Userdao(Connection_Provider.getConnection());
              // 
              boolean ans=dao.updateUser(update_user);
              message m=null;
              if(ans==true)
              {
                 
                 String path=request.getRealPath("/")+"pics"+File.separator+update_user.getProfile();
                 
                 if(Helper.deleteFile(path))
                 {
                     if(Helper.saveFile(snap.getInputStream(), path))
                     {
                          m= new message("Profile Updated","success","alert-success");
                          s.setAttribute("msg", m);
                     }
                     else{
                          
                          m= new message("Profile not saved successfully","error","alert-danger");
                          s.setAttribute("msg", m);
                     }
                 }
                 else{
                     
                      m= new message("Old profile not deleted","error","alert-danger");
                      s.setAttribute("msg", m);
                 }
                 
                 
              }else
              {
                 
                 m= new message("Profile not Updated","error","alert-danger");
                 s.setAttribute("msg", m);
              }
              
              // redirect to profile page
              response.sendRedirect("profile.jsp");
              
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
