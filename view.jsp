<%-- 
    Document   : view
    Created on : 23-Jun-2024, 4:09:21 pm
    Author     : Kiran
--%>

<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<%@page language="java"%>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/js/bootstrap.min.js" integrity="sha512-Cy3gSrKCS8aJ7AIaammc0wLXyKRmTa8ntgHvU01Tuz4EdsqVgk/lKzFm/b/8RxOWBaoHI2uGLLU6rXMbqKcGHA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/css/bootstrap.css" integrity="sha512-KsdCRnLXUKDOyOPhhh7EjWSh2Mh/ZI64XwaYQPGyvuQYWBE1FGTCPnUKjLvD+DDQevQdks3US94aYJsIQxTiKg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <title>View</title>
    </head>
    <body>
       <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#id</th>
       <th scope="col">Empid</th>
      <th scope="col">FirstName</th>
      <th scope="col">LastName</th>
      <th scope="col">Salary</th>
      <th scope="col">Date Of Birth</th>
      <th scope="col">Gender</th>
       <th scope="col">Contact</th>
      <th scope="col">Email Address</th>
     
      <th scope="col">Join On</th>
      
      <th scope="col">Roll</th>
      <th scope="col">Photo</th>
      <th scope="col"></th>
      <th scope="col">Operation</th>
    </tr>
  </thead>
  <tbody>
      <%
            Connection con;
                     Class.forName("com.mysql.jdbc.Driver");
           
                    
                    con = DriverManager.getConnection("jdbc:mysql://localhost/banking_system", "root", "");
                    PreparedStatement pst;
                    //String username=request.getParameter("username");
                    ResultSet rs;
                    pst=con.prepareStatement("select * from emp");
                    rs=pst.executeQuery();
                    while(rs.next())
                    {
                          String eid = rs.getString("eid");
                        // String accno = rs.getString("");
                          String filename = rs.getString("filename");
                          %>
                         
                            <tr>
                                <td><%=rs.getString("id")%></td>
                                <td><%=rs.getString("eid")%></td>
                                <td><%=rs.getString("fname")%></td>
                                <td><%=rs.getString("lname")%></td>
                                <td><%=rs.getString("salary")%></td>
                                <td><%=rs.getString("dob")%></td>
                                <td><%=rs.getString("gender")%></td>
                                <td><%=rs.getString("mobile")%></td>
                                <td><%=rs.getString("email")%></td>
                                <td><%=rs.getString("enrollon")%></td>
                                <td><%=rs.getString("roll")%></td>
                                 <td><img src="../<%=filename%>" width="100" height="100"/></td>
                                 <td><button class="text-light btn btn-primary"><a href="update.jsp?id=<%=eid%>" class="text-light">Edit</a></button></td>
                            <td><button class="text-light btn btn-danger"><a href="delete.jsp?id=<%=eid%>" class="text-light">Delete</a></button></td>
                            </tr>
                          
                          <%
                    }
      %>
  </tbody>
       </table>
    </body>
</html>
