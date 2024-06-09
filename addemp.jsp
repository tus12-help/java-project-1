<%-- 
    Document   : addemp
    Created on : 31-May-2024, 4:00:43 pm
    Author     : Kiran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, shrink-to-fit=no">
        <!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <title>Add Employee</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/js/bootstrap.min.js" integrity="sha512-Cy3gSrKCS8aJ7AIaammc0wLXyKRmTa8ntgHvU01Tuz4EdsqVgk/lKzFm/b/8RxOWBaoHI2uGLLU6rXMbqKcGHA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/css/bootstrap.css" integrity="sha512-KsdCRnLXUKDOyOPhhh7EjWSh2Mh/ZI64XwaYQPGyvuQYWBE1FGTCPnUKjLvD+DDQevQdks3US94aYJsIQxTiKg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>  
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
        
        <nav class="navbar navbar-expand-lg navbar-light bg-info fixed-top ">
            <img alt="RNSB" height="100" data-sticky-height="40" data-sticky-top="90" src="img/mybank3.png" />
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <div class="fon">
                        <li class="nav-item active">
                            <a class="nav-link" href="#"><i class="fa fa-users" aria-hidden="true">Account's</i><span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="#"><i class="fa fa-address-card" aria-hidden="true">Employee's</i></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="#"><i class="fa fa-user" aria-hidden="true">Profile</i></a>
                        </li>
                        <li class="nav-item">
                            <button class="btn btn-danger" align="right"><a href="logout.jsp" class="text-light">Logout</a></button>
                        </li>
                    </div>
                </ul>
            </div>


        </nav>
        <h1><center>New Employee</center></h1>
        <form action="eadd" method="post">
            <div class="container mt-3  ">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">First Name</label>
                        <input type="text" class="form-control" id="inputEmail4" name="fname" placeholder="Name" required autocomplete="off">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Last Name</label>
                        <input type="text" class="form-control" id="inputPassword4" name="lname" placeholder="Password" required autocomplete="off">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Create Username</label>
                        <input type="text" class="form-control" id="inputPassword4" name="uname" placeholder="Create Username" required autocomplete="off">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Password</label>
                        <input type="password" class="form-control" id="inputEmail4" name="password" placeholder="Set Password" required autocomplete="off">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">QUALIFICATION </label>
                        <input type="text" class="form-control" id="inputPassword4" name="uname" placeholder="Enter Qualification Of Employee" required autocomplete="off">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Gender</label>
                        <div classs="form-control">
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="flexRadioDisabled" id="flexRadioDisabled" checked>
                                <label class="form-check-label" >
                                    Male
                                </label>

                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="flexRadioDisabled" id="flexRadioDisabled">
                                <label class="form-check-label">
                                    Female
                                </label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="flexRadioDisabled" id="flexRadioDisabled">
                                <label class="form-check-label">
                                    Other   
                                </label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputAddress">Address</label>
                    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
                </div>
                <div class="form-group">
                    <label for="inputAddress2">Address 2</label>
                    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">Contact No</label>
                        <input type="number" class="form-control" name="mobile" id="inputCity" required autocomplete="off">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputCity">E-mail</label>
                        <input type="email" class="form-control" name="email" id="inputCity" required autocomplete="off">
                    </div>

                    <div class="form-group col-md-6">
                        <label for="inputCity">Salary</label>
                        <input type="number" class="form-control" name="salary" id="inputCity" required autocomplete="off">
                    </div>
                    <div class="form-group col-md-6">
                            <label>Employee Photo:-</label>
                            <input type="file" name="image" class="form-control" required="on">
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

        </form>
    </div>
</body>
</html>
