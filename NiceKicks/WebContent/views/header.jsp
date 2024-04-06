<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.bundle.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="main.css">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.bundle.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    
 

</head>
<body>
<header class="container-fluid p-0">
    <div class="row" style="background-color: darksalmon;">
        <div class="col-sm-7" ></div>

        <div class="col-sm-5" >
            <div class="row">
              

                <div class="col-sm-4">

                    <div class="mt-2">
                        <a href="#" class="text-light" style="text-decoration: none"><i class="bi bi-card-checklist"></i> Track your order</a>
                    </div>
                    </div>

                <div class="col-sm-4 ">
                     <div class="dropdown">
                    <button type="button" class="btn dropdown-toggle text-light"  data-bs-toggle="dropdown">
                      Currency
                    </button>
                    <ul class="dropdown-menu">
                      <li><a class="dropdown-item" href="#">USD</a></li>
                      <li><a class="dropdown-item" href="#">VNĐ</a></li>
                      <li><a class="dropdown-item" href="#">CAD</a></li>
                      <li><a class="dropdown-item" href="#">EURO</a></li>
                      <li><a class="dropdown-item" href="#">JPY</a></li>
                    </ul>
                  </div>
                </div>

                <div class="col-sm-4">

                    <div class="dropdown">
                        <button type="button" class="btn dropdown-toggle text-light"   data-bs-toggle="dropdown">
                          My Account
                        </button>
                        <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="#">Sign In</a></li>
                          <li><a class="dropdown-item" href="#">Register</a></li>
                          <li><a class="dropdown-item" href="#">Wish List</a></li>
                          <li><a class="dropdown-item" href="#">Cart</a></li>
                        </ul>
                      </div>
                </div>
              </div>
           
        </div>
      
      </div>
      

      
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-4">
            <a href="#"><img src="images/logo1 (2).png" alt="" style="width: 150px;"></a>
          </div>
     
          <div class="col-sm-4 mt-3">
            <form class="d-flex">
              <input class="form-control" type="text" placeholder="Search entire shop here">
              <button class="btn" style="background-color: khaki;" type="button">Search</button>
            </form>
          </div>
          <div class="col-sm-1 mt-4" style="font-size: small;">
            <a href="#" style="text-decoration: none;color: black;"><i class="bi bi-heart"></i> Wish list 
            </a>
          </div>
          <div class="col-sm-1 mt-4" style="font-size: small;">
            <a href="#" style="text-decoration: none;color: black;"><i class="bi bi-bag"></i> Your Cart</a>
          </div>
          <div class="col-sm-2 mt-2" style="font-size: medium;"></div>
        </div>
      </div>
      
      <div class="row mt-3">
        <div class="col-sm-9">
          <nav class="navbar navbar-expand-sm  navbar-light " style="font-size: large;">
            <div class="container-fluid">
              
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                  <li class="nav-item me-4" style="margin-left: 100px;">
                    <a class="nav-link" href="#">Home</a>
                  </li>
                  
                  <li class="nav-item dropdown me-4" >
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Shop</a>
                    <ul class="dropdown-menu">
                      <li><a class="dropdown-item" href="#">Casual</a></li>
                      <li><a class="dropdown-item" href="#">Basketball</a></li>
                      <li><a class="dropdown-item" href="#">Running</a></li>
                    </ul>
                  </li>

                  <li class="nav-item me-4">
                    <a class="nav-link" href="#">Shipping And Return</a>
                  </li>
                  <li class="nav-item me-4">
                    <a class="nav-link" href="#">Terms And Conditions</a>
                  </li>  
                  <li class="nav-item me-4">
                    <a class="nav-link" href="#">Private Policy</a>
                  </li>  
                  <li class="nav-item me-4">
                    <a class="nav-link" href="#">FAQ</a>
                  </li>  
                </ul>
              </div>
            </div>
          </nav>
        </div>
        <div class="col-sm-3">
          <nav class="navbar navbar-expand-sm  navbar-light" style="font-size: large;">
            <div class="container-fluid">
              
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link" href="#">Follow Us:</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="bi bi-facebook" style="color: cornflowerblue;"></i></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="bi bi-instagram" style="color: tomato;"></i></a>
                  </li>
                
                  
                </ul>
              </div>
            </div>
          </nav>
        </div>
      </div>

</header>
</body>
</html>