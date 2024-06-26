<%-- 
    Document   : addemp
    Created on : 31-May-2024, 4:00:43 pm
    Author     : Kiran
--%>

<%@page import="java.util.UUID"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@ page language="java" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="java.io.*,javax.servlet.*"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.nio.file.Paths" %>
<%@ page import="java.nio.file.Files" %>
<%
    Random random = new Random();
    int randomempNumber = random.nextInt(1000);
    //  String upload1="D:\\netbens\\WebApplication7\\web\\images";

    //String up="images";

%>
<%    
       /* try {

            String eid = request.getParameter("eid");
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String salary = request.getParameter("salary");
            String dob = request.getParameter("dob");
            String degree = request.getParameter("degree");
            String gender = request.getParameter("gender");
            String address = request.getParameter("address");
            String mobile = request.getParameter("mobile");
            String email = request.getParameter("email");
            String enrolld = request.getParameter("enrolld");
            String aadhar = request.getParameter("aadhar");
            String religion = request.getParameter("religion");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String roll = request.getParameter("roll");
             String uploadDir = application.getRealPath("/") + "euploads";
             
            Connection con;
            PreparedStatement ps;
           
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/banking_system", "root", "");
            DiskFileItemFactory factory = new DiskFileItemFactory();
            factory.setRepository(new File(uploadDir));// Set the directory to temporarily store uploaded files
            //DiskFileItemFactory factory1 = new DiskFileItemFactory();
            // factory.setRepository(new File(upload1));
            ServletFileUpload upload = new ServletFileUpload(factory);
            //ServletFileUpload upload1a = new ServletFileUpload(factory1);
            List<FileItem> items = upload.parseRequest(request);
            for (FileItem item : items) {
                if (!item.isFormField()) { // Process file upload
                    String fileName = new File(item.getName()).getName();
                    String randomFileName = UUID.randomUUID().toString();
                    //String filename1="images\\"+fileName;
                    //String filePath = uploadDir + File.separator + fileName;
                    String filename1 = "euploads\\" + randomFileName;
                    String filePath = uploadDir + File.separator + randomFileName;
                    File uploadedFile = new File(filePath);

                    // Save the file to disk
                    item.write(uploadedFile);
            
                    //con.setAutoCommit(false);
                    //Statement stmt = con.createStatement();
                    //stmt.executeUpdate("insert into emp  " + "values (null,'" + eid + "','" + fname + "','" + lname + "','" + salary + "','" + dob + "','" + degree + "','" + gender + "','" + address + "','" + mobile + "','" + email + "','" + enrolld + "','" + aadhar + "','" + religion + "','" + username + "','" + password + "','"+roll+"')");
                    //stmt.execute("insert into user " + "values(null,'" + username + "','" + password + "','" + roll + "','" + eid + "')");
                    //con.commit();
                    //ps.executeUpdate();
                    String sql = "INSERT INTO emp (eid,fname,lname,salary,dob,degree,gender,address,mobile,email,enrollon,aadhar,religion,username,password,roll,filename,filepath) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                    ps = con.prepareStatement(sql);
                    ps.setString(1, eid);
                    ps.setString(2, fname);
                    ps.setString(3, lname);
                    ps.setString(4, salary);
                    ps.setString(5, dob);
                    ps.setString(6, degree);
                    ps.setString(7, gender);
                    ps.setString(8, address);
                    ps.setString(9, mobile);
                    ps.setString(10, email);
                    ps.setString(11, enrolld);
                    ps.setString(12, aadhar);
                    ps.setString(13, religion);
                    ps.setString(14, username);
                    ps.setString(15, password);
                    ps.setString(16, roll);
                    ps.setString(17, filename1);
                    ps.setString(18, filePath);
                   
                    ps.executeUpdate();
                    
                    response.sendRedirect("tSuccess.jsp");
                }
            }
    }
    catch (Exception e) {
            e.printStackTrace();
        }

  */  
%>

<!DOCTYPE html>
<html>
    <head>
         <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,shrink-to-fit=no">
        <!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <title>Add</title>


        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
       <style>
            .fon
            {
                font-size: 25px;
            }


        </style>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-light bg-primary text-light">
  <a class="navbar-brand" href="#"><i class="fa fa-university fa-3x" aria-hidden="true">MYBANK</i></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
     <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link"href="http://localhost:8006/bsc_p3/" target="_self">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="register.jsp" target="_self">Customer's</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="register.jsp" target="_self">Employee's</a>
      </li>
    
      <li class="nav-item active">
        <a class="nav-link" href="register.jsp" target="_self">Transaction's</a>
      </li>
      <li class="nav-item active">
         <button class="btn btn-danger" align="right"><a href="logout.jsp" class="text-light">Logout</a></button>
      </li>
    </ul>
  </div>
</nav>
        <h1><center>New Employee Or Admin</center></h1>
        <form action="${pageContext.request.contextPath}/emp1" method="post" enctype="multipart/form-data">
            <div class="container mt-3  ">
                <div class="form-row"><!-- comment -->
         <div class="form-group col-md-6">
             <label>Employee Id</label>
             <input type="number" name="eid" value="<%=randomempNumber%>" class="form-control" readonly>
         </div>
         <div class="form-group col-md-6">
          <label>Enter FirstName</label>
          <input type="text" name="fname" placeholder="Enter Firstname" class="form-control" required autocomplete="off">
      </div>
  </div>
  <div class="form-row">
      <div class="form-group col-md-6">
          <label>Enter LastName</label>
          <input type="text" name="lname" placeholder="Enter lastname" class="form-control" required="" autocomplete="off">
      </div>
      <div class="form-group col-md-6">
          <label>Salary</label>
          <input type="number" name="salary" placeholder="Enter Salary" class="form-control" required="" autocomplete="off">
      </div>
  </div>
  <div class="form-row">
         <div class="form-group col-md-6">
             <label>Date of Birth</label>
             <input type="date" name="dob" class="form-control">
         </div>
         <div class="form-group col-md-6">
             <label>Qualification</label>
             <select name="degree" class="form-control">
                 <option value="10+2">10+2</option>
                 <option value="Graduation">Graduation</option>
                 <option value="Post-Graduation">Post-Graduation</option>
             </select>
         </div>
     </div>
     <div class="form-row">
         <div class="form-group col-md-6">
             <label>Gender</label>
             <div classs="form-control">
                 <div class="form-check form-check-inline">
                     <input type="radio" name="gender" value="Male" class="form-check-input" checked><label>Male</label> 
                 </div>
                 <div class="form-check form-check-inline">
                     <input type="radio" name="gender" class="form-check-input"  value="Female"><label>Female</label>
                 </div>
                 <div class="form-check form-check-inline"><!-- comment -->
            <input type="radio" name="gender" class="form-check-input"  value="Other"><label>Other</label>
        </div>
    </div>
</div>
<div class="form-group col-md-6">

</div>
</div>
<label>Enter Address</label>
<input type="text" name="address" placeholder="Enter Address" class="form-control" required="" autocomplete="off">
<div class="form-row">
         <div class="form-group col-md-6">
               <label>Enter Mobile No</label>
               <input type="number" name="mobile" placeholder="Enter Contact" class="form-control" required="" autocomplete="off">
           </div>
           <div class="form-group col-md-6">
               <label>Enter E-mail Address</label> 
               <input type="email" name="email" placeholder="Enter Email" class="form-control" required="" autocomplete="off">
           </div>
       </div>
       <div class="form-row">
           <div class="form-group col-md-6">
               <label>Joining Date</label>
               <input type="date" name="enrolld" class="form-control">
           </div>
           <div class="form-group col-md-6">
               <label>Aadhar No</label>
               <input type="number" name="aadhar" placeholder="Enter aadhar no" class="form-control" required="" autocomplete="off"><br>
           </div>

       </div>
       <div class="form-row">
           <div class="form-group col-md-6">
               <label>religion</label>
               <select name="religion" class="form-control">
                   <option value="Hindu">Hindu</option>
                   <option value="Muslim">Muslim</option>
                   <option value="Sikh">Sikh</option>
                   <option value="Christian">Christian</option>
                   <option value="Other">Other</option>
               </select>
           </div>
           <div class="form-group col-md-6">
               <label>Enter Username</label>
               <input type="text" name="username" placeholder="Enter username" class="form-control" required="" autocomplete="off">
           </div>
       </div>
       <div class="form-row">
           <div class="form-group col-md-6">
               <label>Enter Password</label>
               <input type="password" name="password" placeholder="Enter Password" class="form-control" required="" autocomplete="off">
           </div>
           <div class="form-group col-md-6">
               <label>Select Role</label>
               <select name="roll" class="form-control">
                   <option value="emp">Employee</option>
                   <option value="admin">Admin</option>
               </select>
           </div>
       </div>
       <div class="form-row">
           <div class="form-group col-md-6">
               <input type="file" class="form-control" name="image" required="">
           </div>
       </div>

       <div class="row">
           <div class="col-6">
               <input type="submit" name="submit" value="Register" class="btn btn-primary w-100">
           </div>
           <div class="col-6">
               <input type="reset" name="clear" value="Clear" class="btn btn-danger w-100">
           </div>
       </div>    
   </div>
        <!--<form action="${pageContext.request.contextPath}/emp1" method="post" enctype="multipart/form-data">
            <input type="number" name="eid" value="<%=randomempNumber%>"><br>
            <input type="text" name="fname" placeholder="Enter Firstname"><br>
            <input type="text" name="lname" placeholder="Enter lastname"><br>
            <input type="number" name="salary" placeholder="Enter Salary"><br>
            <input type="date" name="dob"><br>
            <select name="degree">
                <option value="10+2">10+2</option>
                <option value="Graduation">Graduation</option>
                <option value="Post-Graduation">Post-Graduation</option>
            </select><br>
            Gender:-
            <input type="radio" name="gender" value="Male">Male
            <input type="radio" name="gender" value="Female">Female
            <input type="radio" name="gender" value="Other">Other
            <br>
            <input type="text" name="address" placeholder="Enter Address"><br>
            <input type="number" name="mobile" placeholder="Enter Contact"><br>
            <input type="email" name="email" placeholder="Enter Email"><br>
            Join date<input type="date" name="enrolld"><br>
            <input type="number" name="aadhar" placeholder="Enter aadhar no"><br>
            <select name="religion">
                <option value="Hindu">Hindu</option>
                <option value="Muslim">Muslim</option>
                <option value="Sikh">Sikh</option>
                <option value="Christian">Christian</option>
                <option value="Other">Other</option>
            </select><br>
            <input type="text" name="username" placeholder="Enter username"><br>
            <input type="password" name="password" placeholder="Enter Password"><br>
            <select name="roll">
                <option value="emp">Employee</option>
                <option value="admin">Admin</option>
            </select>
            <input type="file" name="image" >
            <input type="submit" name="submit">-->
        </form>
    </div>
</body>
</html>
