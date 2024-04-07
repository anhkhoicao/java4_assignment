<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<jsp:include page="header.jsp">
<jsp:param value="header" name="header"/>
</jsp:include>
    <section class="mycontant">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-9" >
                    <div class="row" >
                        <div class="col-md-6">
                            <img class="img-fluid" src="images/AF1.png" alt="">
                        </div>
                        <div class="col-md-6">
                            <div class="produc py-4" style="font-weight: 700; font-size: 20px;">   
                                AIR FORCE 1
                                <hr>
                                110
                                <hr>
                                <!-- Các phần tử input và button khác -->
                            </div>
                            <div class="btn">
                                <div class="row">
                                    <div class="col-md-6 text-start">
                                        <button class="btn text-white" style="background-color: #ffb3da; width: 300px; font-size: 14px;font-weight: bold; height: 50px;">ADD TO CART</button>
                                    </div>
                                    <div class="col-md-6">
                                        <button class="btn text-white" style="background-color: #adebad; width: 300px; font-size: 15px; height: 50px; font-weight: bold;">BUY NOW</button>
                                    </div>
                                </div>
                                <button class="btn text-white py-3" style="background-color: #8080ff; height: 50px; width: 100%; font-size: 14px;font-weight: bold; margin-top: 10px;">GET DISCOUNT CODE</button>
                            </div>
                            <hr>
                            <div class="detail">
                                <strong>Describe :</strong>
                                <p style="font-size: 15px;">Product description here</p>
                            </div>
                        </div>
                    </div>
                </div>

                </div>
            </div>
    </section>

    <hr>

    <section class="produc-list">
        <p class="text-center" style="font-size: 30px;font-weight: 700;">Maybe you will like it</p>
        <div class="container-fluid py-2">
            <div class="row text-center" >
                <div class="col-lg-2 col-md-4">
                    <div class="card" > 
                        <div class="card-body">        
                            <img src="images/slideproduc.webp" class="img-fluid" alt="" style="height: 200px;">
                            <div class="product">
                                <p class="prod-name" style="font-size: 16px; font-weight: 450;">AIR FORCE 1</p>
                                <p class="prod-price" style="font-size: 15px; font-weight: 700;">110 &</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4">
                    <div class="card" > 
                        <div class="card-body">        
                            <img src="images/slideproduc.webp" class="img-fluid" alt="" style="height: 200px;">
                            <div class="product">
                                <p class="prod-name" style="font-size: 16px; font-weight: 450;">AIR FORCE 1</p>
                                <p class="prod-price" style="font-size: 15px; font-weight: 700;">110 &</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-2 col-md-4">
                    <div class="card" > 
                        <div class="card-body">        
                            <img src="images/slideproduc.webp" class="img-fluid" alt="" style="height: 200px;">
                            <div class="product">
                                <p class="prod-name" style="font-size: 16px; font-weight: 450;">AIR FORCE 1</p>
                                <p class="prod-price" style="font-size: 15px; font-weight: 700;">110 &</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-2 col-md-4">
                    <div class="card" > 
                        <div class="card-body">        
                            <img src="images/slideproduc.webp" class="img-fluid" alt="" style="height: 200px;">
                            <div class="product">
                                <p class="prod-name" style="font-size: 16px; font-weight: 450;">AIR FORCE 1</p>
                                <p class="prod-price" style="font-size: 15px; font-weight: 700;">110 &</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-2 col-md-4">
                    <div class="card" > 
                        <div class="card-body">        
                            <img src="images/slideproduc.webp" class="img-fluid" alt="" style="height: 200px;">
                            <div class="product">
                                <p class="prod-name" style="font-size: 16px; font-weight: 450;">AIR FORCE 1</p>
                                <p class="prod-price" style="font-size: 15px; font-weight: 700;">110 &</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-2 col-md-4">
                    <div class="card" > 
                        <div class="card-body">        
                            <img src="images/slideproduc.webp" class="img-fluid" alt="" style="height: 200px;">
                            <div class="product">
                                <p class="prod-name" style="font-size: 16px; font-weight: 450;">AIR FORCE 1</p>
                                <p class="prod-price" style="font-size: 15px; font-weight: 700;">110 &</p>
                            </div>
                        </div>
                    </div>
                </div>
               		</div>
               			</div>

    </section>
    <hr class="container">
    <section class="myfooter py-4" style=" height: 400px; font-weight: 700;">
    </section>
    <jsp:include page="footer.jsp">
<jsp:param value="footer" name="footer"/>
</jsp:include>
</body>
</html>