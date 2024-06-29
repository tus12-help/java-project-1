<%-- 
    Document   : update
    Created on : 24-Jun-2024, 10:39:23 am
    Author     : Kiran
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,shrink-to-fit=no">
        <!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <title>Edit</title>


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
        <div class="container">
            <h1><center>Edit Employee Or Admin</center></h1>
            <form action="update.jsp" method="POST">
                <input type="number" class="form-control" name="eid" required="on" placeholder="Enter Employee id"><br>
                <input type="submit"  value="Edit" class="btn btn-primary w-50" name="Edit" class="btn btn-primary text-light">
            </form>
            <form action="${pageContext.request.contextPath}/edit" method="post" enctype="multipart/form-data">
                <%
                    if (request.getParameter("Edit") != null) {

                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/banking_system", "root", "");
                        String eid = request.getParameter("eid");
                        pst = con.prepareStatement("select * from emp where eid=?");
                        pst.setString(1, eid);
                        
                        rs = pst.executeQuery();
                        
                        while (rs.next()) {
                         String filename = rs.getString("filename");
                %>
                <div class="container mt-3  ">
                    <div class="form-row"><!-- comment -->
                        <div class="form-group col-md-6">
                            <label>Employee Id</label>
                            <input type="number" name="eid" value="<%=rs.getString("eid")%>" class="form-control" readonly>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Enter FirstName</label>
                            <input type="text" name="fname" placeholder="Enter Firstname" value="<%=rs.getString("fname")%>"class="form-control" required autocomplete="off">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Enter LastName</label>
                            <input type="text" name="lname" placeholder="Enter lastname" value="<%=rs.getString("lname")%>" class="form-control" required="" autocomplete="off">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Salary</label>
                            <input type="number" name="salary" placeholder="Enter Salary" class="form-control" value="<%=rs.getString("salary")%>" required="" autocomplete="off">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Date of Birth</label>
                            <input type="date" name="dob" value="<%=rs.getString("dob")%>"class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Qualification</label>
                            <select name="degree" class="form-control" value="<%=rs.getString("degree")%>">
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
                    <input type="text" name="address" placeholder="Enter Address" value="<%=rs.getString("address")%>" class="form-control" required="" autocomplete="off">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Enter Mobile No</label>
                            <input type="number" name="mobile" placeholder="Enter Contact" value="<%=rs.getString("mobile")%>" class="form-control" required="" autocomplete="off">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Enter E-mail Address</label> 
                            <input type="email" name="email" placeholder="Enter Email" value="<%=rs.getString("email")%>" class="form-control" required="" autocomplete="off">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Joining Date</label>
                            <input type="date" name="enrolld" value="<%=rs.getString("enrollon")%>"class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Aadhar No</label>
                            <input type="number" name="aadhar" placeholder="Enter aadhar no" value="<%=rs.getString("aadhar")%>" class="form-control" required="" autocomplete="off"><br>
                        </div>

                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>religion</label>
                            <select name="religion" class="form-control" value="religion">
                                <option value="Hindu">Hindu</option>
                                <option value="Muslim">Muslim</option>
                                <option value="Sikh">Sikh</option>
                                <option value="Christian">Christian</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Enter Username</label>
                            <input type="text" name="username" placeholder="Enter username" value="<%=rs.getString("username")%>" class="form-control" required="" autocomplete="off">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Enter Password</label>
                            <input type="password" name="password" placeholder="Enter Password" value="<%=rs.getString("password")%>" class="form-control" required="" autocomplete="off">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Select Role</label>
                            <select name="roll" class="form-control" value="<%=rs.getString("roll")%>">
                                <option value="emp">Employee</option>
                                <option value="admin">Admin</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            Current-Image:-<img src="../<%=filename%>"  width="100" height="100">
                            <input type="file" class="form-control" name="image" value="<%=rs.getString("filename")%>" >
                           
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-6">
                            <input type="submit" name="submit" value="Update" class="btn btn-primary w-100">
                        </div>
                    </div>
                </div>
                        <%
                                }
                            }
                        %>
                        </form>
                    </div>
                    </body>
                    </html>
