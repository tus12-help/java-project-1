<%-- 
    Document   : index
    Created on : 29-May-2024, 9:29:20 am
    Author     : Kiran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
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
            <a class="navbar-brand" href="#"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Home</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="register.jsp"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Register</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
              
              </div>
            </div>
        </nav><br><br><br>
        <div class="container mt-5">
            <div class="row">
                <form  action="LoginServlet" method="post" class="col-sm-5" >
                    <h2 class="alert alert-info text-center p-2">Login</h2>
                    <div>
                        <label for="username" class="form-label">Username:</label>
                        <input type="text" class="form-control" name="username" placeholder="Enter Your Username" required="on" autocomplete="off"> 
                    </div>
                     <div>
                        <label for="password" class="form-label">Password:</label>
                        <input type="password" class="form-control" name="password" placeholder="Enter Your password" required="on" maxlength="4" autocomplete="off"> 
                    </div>
                    <div>
                        <label for="password" class="form-label">Captcha:</label><br>
                        <img src="captcha-image"><br>
                        <input type="text" class="form-control" name="captcha" placeholder="Enter Captcha Code"  autocomplete="off"> 
                    </div><br>
                    <div class="mt-5">
                        <input type="submit" name="Login" class="btn btn-info text-light">
                    </div>
                    <h2 class="text-danger"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></h2>
                     <h2 class="text-danger"><%=(request.getAttribute("error") == null) ? "" : request.getAttribute("error")%></h2>
                </form>
                <div class="col-sm-7 text-center">
                    <h2 class="alert alert-info">Please Read This Instration's...</h2>
                    <div class="text-sm-left">
                        1.The URL in your browser address bar begins with "https"<br><br>
                        2.The address or status bar displays padlock symbol<br><br>
                        3.Click the padlock to view and verify the security certificate<br><br>
                        4.The address bar turns green indicating that the site is secured with SSL Certificate that meets the Extended Validation Standard<br><br>
                        5.Do not provide your username and password anywhere other than this page.<br><br>
                        6.Your username and password are highly confidential. Never part with them. BANK will never ask for this information.<br><br>
                    </div>
                </div>
            </div>
        </div>
                <div class="container">
                    <center>
                        <h2>Follow Us On</h2>
                           <div class="social">
                                <a href="#" id="share-fb" class="sharer button"><i class="fa fa-3x fa-facebook-square"></i></a>
                                <a href="#" id="share-tw" class="sharer button"><i class="fa fa-3x fa-twitter-square"></i></a>
                                <a href="#" id="share-li" class="sharer button"><i class="fa fa-3x fa-linkedin-square"></i></a>
                                <a href="#" id="share-gp" class="sharer button"><i class="fa fa-3x fa-google-plus-square"></i></a>
                                <a href="#" id="share-em" class="sharer button"><i class="fa fa-3x fa-envelope-square"></i></a>
                            </div>
                    </center>
                        </div>
    </body>
</html>
