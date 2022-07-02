
package com.tech_fever.blog.helper;
import java.sql.*;

public class Connection_Provider 
{
   private static Connection con;
    private static String user="root";
    private static String pass="Rahul@3178";
    private static String url="jdbc:mysql://localhost:3306/tech_fever_blog";
    public static Connection getConnection()
    {
        try
        {
            if(con==null)
            {
                   // Driver class loaded
                Class.forName("com.mysql.cj.jdbc.Driver");
                // create a connection
                 con=DriverManager.getConnection(url,user,pass);

            }
            // Driver class loaded
         Class.forName("com.mysql.cj.jdbc.Driver");
         // create a connection
          con=DriverManager.getConnection(url,user,pass);
            
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
    
}
