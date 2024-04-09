<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<jsp:include page="header.jsp">
<jsp:param value="header" name="header"/>
</jsp:include>
<main>
<div class="container-fluid">
    <article style="background-color:white;">
        <div class="">
            <div id="demo" class="carousel slide" data-bs-ride="carousel">
    
                <!-- Indicators/dots -->
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                  <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                  <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
                </div>
              
                <!-- The slideshow/carousel -->
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="images/nike-just-do-it.jpg" alt="Minton" class="d-block w-100">
                  </div>
                  <div class="carousel-item">
                    <img src="images/airmax.png" style="height: 980px;" alt="Sun" class="d-block w-100">
                  </div>
                  <div class="carousel-item">
                    <img src="images/nike_sb.png" alt="Amarte" class="d-block w-100">
                  </div>
                </div>
              
                <!-- Left and right controls/icons -->
                <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon"></span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                  <span class="carousel-control-next-icon"></span>
                </button>
              </div>
        </div>
        <hr>
        <div class="container-fluid py-2">
            <div class="row text-center" >
                <div class="col-lg-2 col-md-4  pb-2">
                            <a href="">      
                            <img src="images/Nike Logo.jpg" style="max-width: 50%; border-radius: 50%;" class="img-fluid border" alt="" >
                          </a>  
                    </div>
                    <div class="col-lg-2 col-md-4 pb-2">

                                <a href="">      
                                <img src="images/Dior logo.jpg" style="max-width: 50%; border-radius: 50%;" class="img-fluid border" alt="" >
                               </a>  

                        </div>
                        <div class="col-lg-2 col-md-4 pb-2">

                                    <a href="">      
                                    <img src="images/Adidas logo.jpg" style="max-width: 50%; border-radius: 50%;" class="img-fluid border" alt="" >
                               </a>
                            </div>
                            <div class="col-lg-2 col-md-4 pb-2">
                                        <a href="">      
                                        <img src="images/Balenciaga Logo.jpg" style="max-width: 50%; border-radius: 50%;" class="img-fluid border" alt="" >
                                        </a> 
                                </div>
                                <div class="col-lg-2 col-md-4 pb-2">
                                   <a href="">      
                                            <img src="images/Chanel Logo Font.jpg" style="max-width: 50%; border-radius: 50%;" class="img-fluid border" alt="" >
                                           </a>
                                    </div>
                                    <div class="col-lg-2 col-md-4 pb-2">
                                       <a href="">      
                                                <img src="images/Nike Logo.jpg" style="max-width: 50%; border-radius: 50%;" class="img-fluid border" alt="" >
                                             </a>
                                        </div>
                                        <div class="col-lg-2 col-md-4 pb-2">
                                          <a href="">      
                                                    <img src="images/Nike Logo.jpg" style="max-width: 50%; border-radius: 50%;" class="img-fluid border" alt="" >
                                                   </a>
                                            </div>
                                            <div class="col-lg-2 col-md-4  py-2 pb-2">
                                              <a href="">      
                                                        <img src="images/Dior logo.jpg" style="max-width: 50%; border-radius: 50%;" class="img-fluid border" alt="" >
                                                      </a>
                                                </div>
                                                <div class="col-lg-2 col-md-4  py-2 pb-2">
                                                  <a href="">      
                                                            <img src="images/Adidas logo.jpg" style="max-width: 50%; border-radius: 50%;" class="img-fluid border" alt="" >
                                                            </a> 
                                                    </div>
                                                    <div class="col-lg-2 col-md-4  py-2 pb-2">
                                                       <a href="">      
                                                                <img src="images/Balenciaga Logo.jpg" style="max-width: 50%; border-radius: 50%;" class="img-fluid border" alt="" >
                                                               </a>
                                                        </div>
                                                        <div class="col-lg-2 col-md-4  py-2 pb-2">
                                                            <a href="">      
                                                                    <img src="images/Chanel Logo Font.jpg" style="max-width: 50%; border-radius: 50%;" class="img-fluid border" alt="" >
                                                                    </a> 
                                                            </div>
                                                            <div class="col-lg-2 col-md-4  py-2 pb-2">
                                                                <a href="">      
                                                                        <img src="images/Nike Logo.jpg" style="max-width: 50%; border-radius: 50%;" class="img-fluid border" alt="" >
                                                                       </a> 
                                                                </div>
                <hr>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-lg-4 col-md-8">
                            <div class="card" > 
                                <div class="card-body">      
                                    <img src="images/AF1.png" class="img-fluid" alt="" style="height: 450px;">
                                    <div class="product mt-3">
                                        <p class="prod-name" style="font-size: 16px; font-weight: 450;">Nike Air Force 1 Full White</p>
                                        <p class="prod-price" style="font-size: 15px; font-weight: 700;">110 $</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-8">
                            <div class="card" > 
                                <div class="card-body">      
                                    <img src="images/AF1.png" class="img-fluid" alt="" style="height: 450px;">
                                    <div class="product mt-3">
                                        <p class="prod-name" style="font-size: 16px; font-weight: 450;">Nike Air Force 1 Full White</p>
                                        <p class="prod-price" style="font-size: 15px; font-weight: 700;">110 $</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-8">
                            <div class="card" > 
                                <div class="card-body">      
                                    <img src="images/AF1.png" class="img-fluid" alt="" style="height: 450px;">
                                    <div class="product mt-3">
                                        <p class="prod-name" style="font-size: 16px; font-weight: 450;">Nike Air Force 1 Full White</p>
                                        <p class="prod-price" style="font-size: 15px; font-weight: 700;">110 $</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-8">
                            <div class="card" > 
                                <div class="card-body">      
                                    <img src="images/AF1.png" class="img-fluid" alt="" style="height: 450px;">
                                    <div class="product mt-3">
                                        <p class="prod-name" style="font-size: 16px; font-weight: 450;">Nike Air Force 1 Full White</p>
                                        <p class="prod-price" style="font-size: 15px; font-weight: 700;">110 $</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-8">
                            <div class="card" > 
                                <div class="card-body">      
                                    <img src="images/AF1.png" class="img-fluid" alt="" style="height: 450px;">
                                    <div class="product mt-3">
                                        <p class="prod-name" style="font-size: 16px; font-weight: 450;">Nike Air Force 1 Full White</p>
                                        <p class="prod-price" style="font-size: 15px; font-weight: 700;">110 $</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-8">
                            <div class="card" > 
                                <div class="card-body mt-3">      
                                    <img src="images/AF1.png" class="img-fluid" alt="" style="height: 450px;">
                                    <div class="product">
                                        <p class="prod-name" style="font-size: 16px; font-weight: 450;">Nike Air Force 1 Full White</p>
                                        <p class="prod-price" style="font-size: 15px; font-weight: 700;">110 $</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            </div>
            <hr>
    </article>
</div>
</main>
<jsp:include page="footer.jsp">
<jsp:param value="footer" name="footer"/>
</jsp:include>
</body>
</html>
