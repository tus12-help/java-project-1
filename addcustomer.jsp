<%-- 
    Document   : addcustomer
    Created on : 09-Jun-2024, 10:50:01 am
    Author     : Kiran
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate, max-age=0, post-check=0, pre-check=0");
    response.setHeader("Pragma", "no-cache");
     HttpSession session1 = request.getSession();
     try {
        if ((session1.getAttribute("emp")).toString() == null) {
            response.sendRedirect("http://localhost:8006/bsc_p3/");
        }
        else
        {
            
        }
    } catch (Exception e) {
        response.sendRedirect("http://localhost:8006/bsc_p3/");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <%
            Random rand = new Random();
            // int randomnum=rand.nextInt(900)+10000;
            //double randnumtwo=rand.nextDouble(66666)+666666;
            long randnumtwo = rand.nextLong();
            randnumtwo = Math.abs(randnumtwo);
            randnumtwo = randnumtwo % 1000000000000L;

        %>
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
                        <a class="nav-link" href="view.jsp" target="_self">Employee's</a>
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
        <h1><center>New Customer</center></h1>
        <form action="${pageContext.request.contextPath}/cadd1" method="post" enctype="multipart/form-data">
            <div class="container mt-3  ">
                <div class="form-row"><!-- comment -->
                    <div class="form-group col-md-6">
                        <label>Account No:-</label>
                        <input type="number" name="accno" value="<%=randnumtwo%>" class="form-control" readonly>
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
                        <label>Nominee Name</label>
                        <input type="text" name="noname" placeholder="Enter Nominee Name" class="form-control" required="" autocomplete="off">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label>Date of Birth</label>
                        <input type="date" name="dob" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                        <label>Account Type</label>
                        <select name="atype" class="form-control">
                            <option value="saving">Saving</option>
                            <option value="Current">Current</option>
                            
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
                        <label>Account Opening Date</label>
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
                        <label>Role</label> 
                        <input type="text" name="roll" class="form-control" value="user" readonly>
                    </div>
                    
                    </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label>Account Opening Balance</label> 
                        <input type="amount" name="bal" min="500"class="form-control input-sm"  autocomplete="off" required>
                    </div>
                
               
                    <div class="form-group col-md-6">
                        <label>Photo</label> 
                        <input type="file" name="cimage" class="form-control"  required>
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
            


            
                
        </form>

    </div>
</body>
</html>
