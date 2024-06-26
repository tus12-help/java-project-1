<%-- 
    Document   : adash
    Created on : 29-May-2024, 1:31:02 pm
    Author     : Kiran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
</nav><br><br>
    <marquee><h1>WELCOME</h1></marquee>
    <br><br>
    <!--<div class="container">
        <div class="row align-items-center text-center">
            &nbsp;&nbsp;&nbsp;<div class="card bg-warning">
                <center> <i class="fa fa-users fa-5x text-center" aria-hidden="true"></i></center>
                <div class="card-body">
                    <h5 class="card-title">Accounts</h5>
                    <p class="card-text">Customer List</p>
                    <a href="#" class="btn btn-primary">View</a>
                </div>
            </div>
            &nbsp;&nbsp;&nbsp;<div class="card bg-danger">
                <i class="fa fa-user-plus fa-5x" aria-hidden="true"></i>
                <div class="card-body">
                    <h5 class="card-title">Add Employee</h5>
                    <p class="card-text">Add New Employee</p>
                    <a href="addemp.jsp" target="_self" class="btn btn-primary">Add</a>
                </div>
            </div>
            &nbsp;&nbsp;&nbsp;<div class="card bg-success">
                <i class="fa fa-id-card-o fa-5x" aria-hidden="true"></i>
                <div class="card-body">
                    <h5 class="card-title">Our Employee's</h5>
                    <p class="card-text">View Employee List</p>
                    <a href="view.jsp" target="_self" class="btn btn-primary">View</a>
                </div>
            </div>
        </div><!-- comment -->
   <!-- </div>
    <div class="container">
        <div class="row align-items-center text-center text-light">
              &nbsp;&nbsp;&nbsp;<div class="card bg-dark">
                <i class="fa fa-briefcase fa-5x" aria-hidden="true"></i>
                <div class="card-body">
                    <h5 class="card-title">Transaction's</h5>
                    <p class="card-text">View Transactions</p>
                    <a href="#" class="btn btn-primary">View</a>
                </div>
            </div>
            &nbsp;&nbsp;&nbsp;<div class="card bg-secondary">
                <i class="fa fa-user fa-5x" aria-hidden="true"></i>
                <div class="card-body">
                    <h5 class="card-title">Profile</h5>
                    <p class="card-text">View Your Profile</p>
                    <a href="#" class="btn btn-primary">View</a>
                </div>
            </div>
            <!-- <div class="card">
                     <img class="card-img-top" src="..." alt="Card image cap">
                     <div class="card-body">
                       <h5 class="card-title">Card title</h5>
                       <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                       <a href="#" class="btn btn-primary">Go somewhere</a>
                     </div>
             </div>
         </div><!-- comment -->

        <!--</div>-->
        
        <div class="container-fluid">
    <div class="row">
      <div class="col-md-4 text-center">
        <div class="card bg-secondary">
          <div class="card-header text-light">
            Employee's
          </div>
          <div class="card-body text-light">
              <i class="fa fa-address-card-o fa-3x" aria-hidden="true"></i>
            <p class="card-text">View employees.</p>
            <a href="view.jsp" target="_self" class="btn btn-primary">View</a>
          </div>
        </div>
      </div>
      <div class="col-md-4 text-center">
        <div class="card bg-success">
          <div class="card-header text-light">
            Customers
          </div>
          <div class="card-body text-light">
              <i class="fa fa-users fa-3x" aria-hidden="true"></i>
            <p class="card-text">View customers.</p>
            <a href="#" class="btn btn-primary">View</a>
          </div>
        </div>
      </div>
      <div class="col-md-4 text-center">
        <div class="card bg-dark">
          <div class="card-header text-light">
            Transactions
          </div>
          <div class="card-body text-light">
              <i class="fa fa-inr fa-3x" aria-hidden="true"></i>
            <p class="card-text">View transaction details.</p>
            <a href="#" class="btn btn-primary">View</a>
          </div>
        </div>
      </div>
    </div>
  </div>
        <br><br>
        <div class="container-fluid text-center">
    <div class="row">
      <div class="col-md-4 text-center ">
        <div class="card bg-info">
          
          <div class="card-header text-light">
            Add New Employee Or Admin
          </div>
          <div class="card-body text-light">
                <i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
            <p class="card-text">Add employees or admin.</p>
            <a href="addemp.jsp" class="btn btn-primary">ADD</a>
          </div>
        </div>
      </div>
      <div class="col-md-4 text-center">
        <div class="card bg-warning">
           
          <div class="card-header text-light">
            Delete 
          </div>
          <div class="card-body text-light">
               <i class="fa fa-trash fa-3x" aria-hidden="true"></i>
            <p class="card-text">remove employee or admin.</p>
            <a href="delete.jsp" terget="_self" class="btn btn-primary">Delete</a>
          </div>
        </div>
      </div>
      <div class="col-md-4 text-center">
        <div class="card bg-danger">
         
          <div class="card-header text-light">
            Edit
          </div>
          <div class="card-body text-light">
                 <i class="fa fa-pencil-square-o fa-3x" aria-hidden="true"></i>
            <p class="card-text">Edit employee or admin.</p>
            <a href="#" class="btn btn-primary">Edit</a>
          </div>
        </div>
      </div>
    </div>
  </div>
        
        <br><br>
       <%@include file="../asset/footer.jsp" %> 
    </body>
</html>


