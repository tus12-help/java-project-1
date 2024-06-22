/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Kiran
 */
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;



@WebServlet("/emp1")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)
public class emp1 extends HttpServlet{
    Connection con;
    PreparedStatement pst;
     public static final String UPLOAD_DIR = "images";
    public String dbFileName = "";
  
    @Override
    
    public void doPost(HttpServletRequest req,HttpServletResponse rsp) throws IOException,ServletException
    {
      
        rsp.setContentType("text/html");
        PrintWriter out=rsp.getWriter();
       
        try
        {
            
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/newdata","root","");
            String username=req.getParameter("username");
            String password=req.getParameter("password");
            String email=req.getParameter("email");
            String mobile=req.getParameter("mobile");
            Part part = req.getPart("image");
            String fileName = extractFileName(part);
            String applicationPath = getServletContext().getRealPath("");
        String uploadPath = applicationPath + File.separator + UPLOAD_DIR;
        System.out.println("applicationPath:" + applicationPath);
        File fileUploadDirectory = new File(uploadPath);
        if (!fileUploadDirectory.exists()) {
            fileUploadDirectory.mkdirs();
        }
         String savePath = uploadPath + File.separator + fileName;
        System.out.println("savePath: " + savePath);
        String sRootPath = new File(savePath).getAbsolutePath();
        System.out.println("sRootPath: " + sRootPath);
        part.write(savePath + File.separator);
        File fileSaveDir1 = new File(savePath);
        /*if you may have more than one files with same name then you can calculate some random characters
         and append that characters in fileName so that it will  make your each image name identical.*/
        dbFileName = UPLOAD_DIR + File.separator + fileName;
        part.write(savePath + File.separator);
            //String image=req.getParameter("iamge");
            pst=con.prepareStatement("insert into userinfo(username,password,email,mobile,filename,path)values(?,?,?,?,?,?)");
            pst.setString(1,username);
            pst.setString(2, password);
            pst.setString(3, email);
            pst.setString(4, mobile);
            pst.setString(5,dbFileName);
             pst.setString(6 , savePath);
             pst.executeUpdate();
             rsp.sendRedirect("data.jsp");  

        }
        catch(ClassNotFoundException e)
        {
            Logger.getLogger(emp1.class.getName()).log(Level.SEVERE,null,e);
        }
        catch(SQLException ex)
        {
           out.println("<font color='red'> RECORD FAILD.....</font>");
        }
    }

   private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return ""; 
    }

}
