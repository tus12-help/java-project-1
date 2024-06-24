/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
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


/**
 *
 * @author Kiran
 */
@WebServlet(urlPatterns = {"/emp1"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)
public class emp1 extends HttpServlet {

    Connection con;
    PreparedStatement pst;
    PreparedStatement pst1;
     public static final String UPLOAD_DIR = "eimages";
    public String dbFileName = "";
    

   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse rsp)
            throws ServletException, IOException {
       rsp.setContentType("text/html");
        PrintWriter out=rsp.getWriter();
        try
        {
            
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/banking_system", "root", "");
            String eid = req.getParameter("eid");
            String fname = req.getParameter("fname");
            String lname = req.getParameter("lname");
            String salary = req.getParameter("salary");
            String dob = req.getParameter("dob");
            String degree = req.getParameter("degree");
            String gender = req.getParameter("gender");
            String address = req.getParameter("address");
            String mobile = req.getParameter("mobile");
            String email = req.getParameter("email");
            String enrolld = req.getParameter("enrolld");
            String aadhar = req.getParameter("aadhar");
            String religion = req.getParameter("religion");
            String username = req.getParameter("username");
            String password = req.getParameter("password");
            String roll = req.getParameter("roll");
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
        dbFileName = UPLOAD_DIR + File.separator + fileName;
        part.write(savePath + File.separator);
        //String sql = "INSERT INTO emp (eid,fname,lname,salary,dob,degree,gender,address,mobile,email,enrollon,aadhar,religion,username,password,roll,filename,filepath) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        pst = con.prepareStatement("insert into emp (eid,fname,lname,salary,dob,degree,gender,address,mobile,email,enrollon,aadhar,religion,username,password,roll,filename,filepath)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    pst.setString(1, eid);
                    pst.setString(2, fname);
                    pst.setString(3, lname);
                    pst.setString(4, salary);
                    pst.setString(5, dob);
                    pst.setString(6, degree);
                    pst.setString(7, gender);
                    pst.setString(8, address);
                    pst.setString(9, mobile);
                    pst.setString(10, email);
                    pst.setString(11, enrolld);
                    pst.setString(12, aadhar);
                    pst.setString(13, religion);
                    pst.setString(14, username);
                    pst.setString(15, password);
                    pst.setString(16, roll);
                    pst.setString(17, dbFileName);
                    pst.setString(18, savePath);
                    pst.executeUpdate();
        pst1=con.prepareStatement("insert into user(accno,username,password,roll) values(?,?,?,?)");
        pst1.setString(1,eid);
        pst1.setString(2,username);
        pst1.setString(3,password);
        pst1.setString(4, roll);
        
        pst1.executeUpdate();
                    
                    rsp.sendRedirect("admin/addemp.jsp");
        //processRequest(request, response);
        }
        catch(ClassNotFoundException e)
        {
            Logger.getLogger(emp1.class.getName()).log(Level.SEVERE,null,e);
        }
        catch(SQLException ex)
        {
           //out.println("<font color='red'> RECORD FAILD.....</font>");
            out.println("<font color='red'> Erroror.....</font>");
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
