<%-- 
    Document   : register
    Created on : 29-May-2024, 11:25:08 am
    Author     : Kiran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,shrink-to-fit=no">
        <!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <title>Register</title>


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
        <a class="nav-link"href="index.jsp" target="_self">Home <span class="sr-only">(current)</span></a>
      </li>
      
      
    </ul>
  </div>
</nav> 
        <br><br>
         <div class="container">
        <div class="card text-center ">
            
  <div class="card-header ">
    <i class="fa fa-user fa-3x" aria-hidden="true"></i>
  </div>
 <div class="card-body text-light text-center bg-primary">
    <h5 class="card-title ">Registration</h5>
                <p class="card-text">Activate Your Internet Banking.....</p>
                <form action="adduser" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                            <label for="exampleInputEmail1">Add Your Account Number......</label>
                            <input type="number" class="form-control" name="account" id="exampleInputEmail1" maxlength="12"  placeholder="Enter account no.." maxlength="12" required="on" autocomplete="off">

                          </div>
                          
                          <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" name="password" id="exampleInputPassword1" maxlength="4" placeholder="Enter Password" required="on" autocomplete="off">
                          </div>
                          <div class="form-group">
                            <label for="exampleInputPassword1">Confirm Password</label>
                            <input type="password" class="form-control" name="password2" id="exampleInputPassword1" maxlength="4" placeholder="Enter Confirm Password" required="on" autocomplete="off">
                          </div>
                     <div class="mt-5">
                        <input type="submit" name="Register" class="btn btn-success text-light">
                    </div>
  </div>
  <div class="card-footer text-muted">
   Activate Your Internet Banking......
  </div>
</div>
         </div>
        
<br><br>
  <%@include file="asset/footer.jsp" %>
    </body>
</html>

