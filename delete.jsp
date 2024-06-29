<%-- 
    Document   : delete
    Created on : 24-Jun-2024, 10:39:31 am
    Author     : Kiran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<%
    if(request.getParameter("submit") != null)
    {
    try
    {
  String id=request.getParameter("id");
    Connection con;
  PreparedStatement pst;
  PreparedStatement pst1;
  ResultSet rs;
  
   Class.forName("com.mysql.jdbc.Driver");
  con = DriverManager.getConnection("jdbc:mysql://localhost/banking_system", "root", "");
  pst=con.prepareStatement("delete from emp where eid=?");
  pst.setString(1, id);
  pst.executeUpdate();
  
  pst1=con.prepareStatement("delete from user where accno=?");
  pst1.setString(1, id);
  pst1.executeUpdate();
  %>
  <script>
    alert("Record deleted");
    window.location.replace("adash.jsp");
</script>
  <%
}
catch(Exception e)
{

}
}
%>
<!--<script>
    alert("Record deleted");
    window.location.replace("adash.jsp");
</script>-->
<head>
    <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,shrink-to-fit=no">
        <!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <title>DashBoard</title>


        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body><br><br>
    <div class="container">
    <form action="delete.jsp" method="post">
        
       
        <input type="number" class="form-control" name="id" placeholder="Enter Employee id" required="" autocomplete="off"><br>
        
         <input type="submit" name="submit" value="Delete" class="btn btn-primary w-50">
        
    </form>
    </div>
</body>