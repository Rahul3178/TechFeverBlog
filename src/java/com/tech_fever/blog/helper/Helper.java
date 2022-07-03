/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech_fever.blog.helper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/**
 *
 * @author RAHUL
 */
public class Helper {

    // it helps to delete old files from img folder.
    public static boolean deleteFile(String path)
    {
        boolean f = false;
        try {
           
            File oldFile = new File(path);
            // this delete function return boolean value according to file deleted or not deleted.
            f = oldFile.delete();
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return f;
    }
    
    // it helps it store file in folder path
    
    public static boolean saveFile(InputStream is, String path)
    {
        boolean f=false;
        
        try{
            
            // here we make a byte array whose size equals to input stram object (is)
            byte b[] = new byte[is.available()];
            
            is.read(b);
            
            FileOutputStream fos =new FileOutputStream(path);
            
            fos.write(b);
            fos.flush();
            fos.close();
            f=true;
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
        
        return f;
    }
}
