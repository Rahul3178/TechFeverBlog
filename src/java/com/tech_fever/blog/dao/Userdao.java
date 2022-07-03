package com.tech_fever.blog.dao;
import com.tech_fever.blog.entities.user;
import java.sql.*;

/**
 *
 * @author RAHUL
 */
public class Userdao 
{
    private Connection con;

    public Userdao(Connection con) {
        this.con = con;
    }
        // methods to insert user to data base:
    /* user is an entity class with the help of his object we can insert or fetch details of a user*/
    
    public boolean saveUser(user us)
    {
        
        boolean f=false;
          // with the help of boolean value we check query is triggered or not  to avoid multiple insertion.
      try
      {
           System.out.println("inside try");
          //save user deatils in database
          String query="insert into user(name,email,password,gender,about) values(?,?,?,?,?)";
          // we are using prepared statement to insert data into db with the help of con object of connection class
          PreparedStatement pstm=this.con.prepareStatement(query);
          pstm.setString(1, us.getName());
          pstm.setString(2, us.getEmail());
          pstm.setString(3, us.getPassword());
          pstm.setString(4, us.getGender());
          pstm.setString(5, us.getAbout());
          
          pstm.executeUpdate();
            f=true;
      }catch(Exception e)
      {
          e.printStackTrace();
      }
      return f;
    }
    
    // get user by user email and user password:
    
    public user getUserByEmailAndPassword(String email, String password )
    {
        user us =null;
        
        try
        {
           
         String query="select * from user where email=? and password=?";
         PreparedStatement pstm=con.prepareStatement(query);
         pstm.setString(1, email);
         pstm.setString(2, password);
         
         ResultSet r_set=pstm.executeQuery();
         if(r_set.next())
         {
             us=new user();
             //  get data from db
             String name=r_set.getString("name");
                       
             // give to user object here  is :us-> user object 
             us.setName(name);
             
             us.setEmail(r_set.getString("email"));
             us.setId(r_set.getInt("id"));
             us.setGender(r_set.getString("gender"));
             us.setPassword(r_set.getString("password"));
             us.setAbout(r_set.getString("about"));
             us.setDateTime(r_set.getTimestamp("rdate"));
             us.setProfile(r_set.getString("profile"));
             
             
         }
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return us;
    }
    
    public boolean updateUser(user us)
    {
         boolean f=false;
        try{
            System.out.println("inside try");
            System.out.println(us.getProfile());
            String query="update user set name=?, password=?, email=?, gender=?, about=?, profile=? where id=?";
            PreparedStatement pstm =con.prepareStatement(query);
            pstm.setString(1, us.getName());
            pstm.setString(2, us.getPassword());
            pstm.setString(3, us.getEmail());
            pstm.setString(4, us.getGender());
            pstm.setString(5, us.getAbout());
            pstm.setString(6, us.getProfile());
            pstm.setInt(7, us.getId());
            pstm.executeUpdate();
            f=true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
            
        }
        return f;
    }
    
    
}
