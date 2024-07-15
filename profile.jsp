<%-- 
    Document   : profile.jsp
    Created on : 09-Jul-2024, 9:35:13 am
    Author     : Kiran
--%>
<%
    
    response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate, max-age=0, post-check=0, pre-check=0");
    response.setHeader("Pragma", "no-cache");
     HttpSession session1 = request.getSession();
    try
    {
        if ((session1.getAttribute("user")).toString() == null) {
            response.sendRedirect("http://localhost:8006/bsc_p3/");
        }
        else
        {
            String accno=(String)session1.getAttribute("accno");
           HttpSession session2=request.getSession();
           Connection con;
           PreparedStatement pst;
            ResultSet rs;
             Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/banking_system", "root", "");
                        pst=con.prepareStatement("select * from cus where accno=?");
                        pst.setString(1,accno);
                        rs=pst.executeQuery();
                        
        %>
        
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
         <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,shrink-to-fit=no">
        <!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <title>View Profile</title>


        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

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
        <a class="nav-link" href="profile.jsp" target="_self">Account</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="view.jsp" target="_self">Transactions</a>
      </li>
    
     
      <li class="nav-item active">
         <button class="btn btn-danger" align="right"><a href="logout.jsp" class="text-light">Logout</a></button>
      </li>
    </ul>
  </div>


        </nav><br><br>
            <%
                
                while(rs.next())
                {
                String filename=rs.getString("filename");
            %>
            <table border="4" class="table table-striped">
            <thead>
                <tr><td>Image</td> <td><img src="../<%=filename%>" width="100" height="100"/></td></tr>
                <tr><td>Accno</td><td><%=rs.getString("accno")%></td></tr>
                    <tr><td>First Name</td><td><%=rs.getString("fname")%></td></tr>
                    <tr><td>Lastname<td><%=rs.getString("lname")%></td></tr>
                    <tr><td>Nominee Name</td><td><%=rs.getString("noname")%></td></tr>
                    <tr><td>Date Of Birth</td><td><%=rs.getString("dob")%></td></tr>
                    <tr><td>Account type</td><td><%=rs.getString("atype")%></td></tr>
                    <tr><td>Gender</td><td><%=rs.getString("gender")%></td></tr>
                    <tr><td>Address</td><td><%=rs.getString("address")%></td></tr>
                    <tr><td>Mobile no</td><td><%=rs.getString("mobile")%></td></tr>
                    <tr><td>Email</td><td><%=rs.getString("email")%></td></tr>
                    <tr><td>Account Opening Date</td><td><%=rs.getString("enrolld")%></td></tr>
                    <tr><td>Aadhar no.</td><td><%=rs.getString("aadharno")%></td></tr>
                    <tr><td>Balance</td><td>Rs.<%=rs.getString("balance")%></td></tr>
            </thead>
             </table>   
                
            <%
                }
            %>
        
    </body>
</html>
<%
            }
}
catch(Exception e)
{

}
        %>
