<%-- 
    Document   : empdash.jsp
    Created on : 09-Jun-2024, 10:41:15 am
    Author     : Kiran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,shrink-to-fit=no">
        <!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <title>Dashboard</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/js/bootstrap.min.js" integrity="sha512-Cy3gSrKCS8aJ7AIaammc0wLXyKRmTa8ntgHvU01Tuz4EdsqVgk/lKzFm/b/8RxOWBaoHI2uGLLU6rXMbqKcGHA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/css/bootstrap.css" integrity="sha512-KsdCRnLXUKDOyOPhhh7EjWSh2Mh/ZI64XwaYQPGyvuQYWBE1FGTCPnUKjLvD+DDQevQdks3US94aYJsIQxTiKg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <style>
            .fon
            {
                font-size: 25px;
            }
            .card {
                width: 22rem;
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
                            <a class="nav-link" href="#"><i class="fa fa-address-card" aria-hidden="true">Transactions</i></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="#"><i class="fa fa-user" aria-hidden="true">View Profile</i></a>
                        </li>
                        <li class="nav-item">
                            <button class="btn btn-danger" align="right"><a href="logout.jsp" class="text-light">Logout</a></button>
                        </li>
                    </div>
                </ul>
            </div>


        </nav><br><br>
    <marquee><h1>WELCOME</h1></marquee>
    <br><br>
    <div class="container">
        <div class="row align-items-center text-center">
            &nbsp;&nbsp;&nbsp;<div class="card bg-warning">
                <center> <i class="fa fa-users fa-5x text-center" aria-hidden="true"></i></center>
                <div class="card-body">
                    <h5 class="card-title">Accounts</h5>
                    <p class="card-text">Customer List</p>
                    <a href="#" class="btn btn-primary">View</a>
                </div>
            </div>&nbsp;&nbsp;&nbsp;
            <div class="card bg-danger">
                <i class="fa fa-user-plus fa-5x" aria-hidden="true"></i>
                <div class="card-body">
                    <h5 class="card-title">Add Customer</h5>
                    <p class="card-text">Add New Customer</p>
                    <a href="addcustomer.jsp" target="_self" class="btn btn-primary">Add</a>
                </div>
            </div>&nbsp;&nbsp;&nbsp;
            <div class="card bg-success">
                <i class="fa fa-id-card-o fa-5x" aria-hidden="true"></i>
                <div class="card-body">
                    <h5 class="card-title">Add Money</h5>
                    <p class="card-text">Deposite Money</p>
                    <a href="#" class="btn btn-primary">Add Money</a>
                </div>
            </div>
        </div><!-- comment -->
    </div>
    <div class="container">
        <div class="row align-items-center text-center text-light">
            &nbsp;&nbsp;&nbsp;  <div class="card bg-dark">
                <i class="fa fa-briefcase fa-5x" aria-hidden="true"></i>
                <div class="card-body">
                    <h5 class="card-title">Transaction's</h5>
                    <p class="card-text">View Transactions</p>
                    <a href="#" class="btn btn-primary">View</a>
                </div>
            </div>&nbsp;&nbsp;&nbsp;
            <div class="card bg-success">
                <i class="fa fa-id-card-o fa-5x" aria-hidden="true"></i>
                <div class="card-body">
                    <h5 class="card-title">Give Money</h5>
                    <p class="card-text">Withdraw Money</p>
                    <a href="#" class="btn btn-primary">Withdraw</a>
                </div>
            </div>&nbsp;&nbsp;&nbsp;
            <div class="card bg-secondary">
                <i class="fa fa-user fa-5x" aria-hidden="true"></i>
                <div class="card-body">
                    <h5 class="card-title">Profile</h5>
                    <p class="card-text">View Your Profile</p>
                    <a href="#" class="btn btn-primary">View</a>
                </div>
            </div>
            

        </div>
    </body>
</html>