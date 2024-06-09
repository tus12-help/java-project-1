<%-- 
    Document   : register
    Created on : 29-May-2024, 11:25:08 am
    Author     : Kiran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" integrity="sha512-FOS5ANNUsuvefA5Fm6hZBLsxqfF105LIysEgV8VNz29jZLVYIhI+MOLKPBmMXgkHhARFHf5pE7KbXOLE6TXW0A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/js/bootstrap.min.js" integrity="sha512-Cy3gSrKCS8aJ7AIaammc0wLXyKRmTa8ntgHvU01Tuz4EdsqVgk/lKzFm/b/8RxOWBaoHI2uGLLU6rXMbqKcGHA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/css/bootstrap.css" integrity="sha512-KsdCRnLXUKDOyOPhhh7EjWSh2Mh/ZI64XwaYQPGyvuQYWBE1FGTCPnUKjLvD+DDQevQdks3US94aYJsIQxTiKg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
     <style>
             .container1 {
  display: flex;
  
 }
 .home{
  margin-top: 20px;
  margin-left: 80px;
}
div.d {
 
 margin-top: 40px;
 font-size: 15px;
  text-align: right;   
  margin-left: 300px;
   font-family: Arial, Helvetica, sans-serif;
  
} 
div.d1{
     margin-top: 40px;
  text-align: right;  
  font-size: 15px;
  margin-right: 20px;
  font-family: Arial, Helvetica, sans-serif;
}
.social a {
  padding: 0 .5em;
 
}
            </style>
    </head>
    <body>
         <div class="container1">
            <div class="home">
           <img alt="RNSB" height="100" data-sticky-height="40" data-sticky-top="90" src="img/mybank3.png" />
            </div>
      <div class="d">
          <i class="fa fa-phone fa-3x" aria-hidden="true" style="color: #74C0FC;">12345&nbsp;67890</i>
            <p align="left"> Get in touch with us</p>
        </div>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="d1">
              <i class="fa fa-envelope-o fa-3x" aria-hidden="true"  style="color: #74C0FC;">netbanking@mybankindia.com</i>
                <p align="left">Send us e-mail on</p>
            </div>
        </div>
             <nav class="navbar navbar-expand-lg navbar-light bg-info">
            <a class="navbar-brand" href="index.jsp"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Home</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
           </div>
            </div>
        </nav><br><br><br>
        <center>
        <div class="card" style="width:30rem;">
  <i class="fa fa-user fa-5x" aria-hidden="true"></i>
  <div class="container">
      <center>
        <div class="card-body">
                <h5 class="card-title">Registration</h5>
                <p class="card-text">Activate Your Internet Banking.....</p>
                <form action="adduser" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                            <label for="exampleInputEmail1">Add Your Account Number......</label>
                            <input type="number" class="form-control" name="account" id="exampleInputEmail1"  placeholder="Enter account no.." maxlength="12" required="on" autocomplete="off">

                          </div>
                          <div class="form-group">
                            <label for="exampleInputPassword1">Username</label>
                            <input type="text" name="username" class="form-control" id="exampleInputPassword1"  placeholder="Enter Username" required="on">
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
                        <input type="submit" name="Register" class="btn btn-primary text-light">
                    </div>
                    
        </div>
    </center>
  </div>
      
</div>
    </body>
</html>
