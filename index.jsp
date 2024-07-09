<%-- 
    Document   : index
    Created on : 29-May-2024, 9:29:20 am
    Author     : Kiran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
     response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate, max-age=0, post-check=0, pre-check=0");
    response.setHeader("Pragma", "no-cache");
%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,shrink-to-fit=no">
        <!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <title>Login</title>


        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
    
    </style>
</head>
<body>
   <!--<div class="d-flex">
           <div class="mr-auto p-2"><h3 style="color: #004fd6;"><i class="fa fa-university" aria-hidden="true"></i>MYBANK</h3></div>
            <div class="p-2" style="color: #004fd6;"><i class="fa fa-phone " aria-hidden="true"></i>12345&nbsp;67890<p>Get Touch With Us..</p></div>
            <div class="p-2" style="color: #004fd6;"><i class="fa fa-envelope-o" aria-hidden="true"></i>mybank@india.com<p>Send Message Us on..</p></div>
        </div>-->
     <nav class="navbar navbar-expand-lg navbar-light bg-primary text-light">
  <a class="navbar-brand" href="#"><i class="fa fa-university fa-3x" style="color:white"aria-hidden="true">MYBANK</i></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
     <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link"href="index.jsp" target="_self">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="register.jsp" target="_self">Register</a>
      </li>
      
    </ul>
  </div>
</nav>
   <br><br><br>
<div class="container mt-5">
    <div class="row">
        <form  action="LoginServlet" method="post" class="col-sm-5" >
            <h2 class="alert alert-primary text-center p-2">Login</h2>
            
                
            <div>
                <label for="username" class="form-label">Account Number:</label>
                <input type="number" class="form-control" name="accno" placeholder="Enter Your AccountNo"  maxlength="12" required="on" autocomplete="off"> 
            </div>
            <div>
                <label for="password" class="form-label">Password:</label>
                <input type="password" class="form-control" name="password" placeholder="Enter Your password" required="on" maxlength="8" autocomplete="off"> 
            </div>
            <div>
                <label for="password" class="form-label">Captcha:</label><br>
                <img src="captcha-image"><br><br>
                <input type="text" class="form-control" name="captcha" placeholder="Enter Captcha Code"  autocomplete="off"> 
            </div><br>
            <div class="mt-3">
                <input type="submit" name="Login" class="btn btn-info text-light">
            </div>
            <h2 class="text-danger"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></h2>
            <h2 class="text-danger"><%=(request.getAttribute("error") == null) ? "" : request.getAttribute("error")%></h2>
        </form>
        <div class="col-sm-7 text-center">
            <h2 class="alert alert-primary">Please Read This Instruction's...</h2>
            <div class="text-sm-left">
                1.The URL in your browser address bar begins with "https:"<br><br>
                2.The address or status bar displays padlock symbol<br><br>
                3.Click the padlock to view and verify the security certificate<br><br>
                4.The address bar turns green indicating that the site is secured with SSL Certificate that meets the Extended Validation Standard<br><br>
                5.Do not provide your username and password anywhere other than this page.<br><br>
                6.Your username and password are highly confidential. Never part with them. BANK will never ask for this information.<br><br>
            </div>
        </div>
    </div>
</div><br><br><br>
 <%@include file="asset/footer.jsp" %>
</body>
</html>
