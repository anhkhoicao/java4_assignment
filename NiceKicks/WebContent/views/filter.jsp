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
    <section class="body">
        <div class="container-fluid">
            <div class="row">
                <aside class="col-sm-3">
                    <div class="p-0">
                        <div class="card">
                            <div class="accordion" id="accordionExample">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingOne">
                                        <button
                                            style="background-color: #ffe6f3;"
                                            class="accordion-button"
                                            type="button"
                                            data-bs-toggle="collapse"
                                            data-bs-target="#collapseOne"
                                            aria-expanded="true"
                                            aria-controls="collapseOne"
                                        >
                                        <strong style="color: black; font-weight: 800;">DANH MỤC</strong>
                                        </button>
                                    </h2>
                                    <div
                                        id="collapseOne"
                                        class="accordion-collapse collapse show"
                                        aria-labelledby="headingOne"
                                        data-bs-parent="#accordionExample"
                                    >
                                        <div class="accordion-body">
                                            <div class="list-group">
                                                <div ng-repeat="cate in list_category">
                                                    <a href="" class="list-group-item">GIÀY THỂ THAO</a>
                                                    <a href="" class="list-group-item">GIÀY THỂ THAO</a>
                                                    <a href="" class="list-group-item">GIÀY THỂ THAO</a>
                                                    <a href="" class="list-group-item">GIÀY THỂ THAO</a>
                                                    <a href="" class="list-group-item">GIÀY THỂ THAO</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="accordion" id="accordionExample2">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingTwo">
                                        <button
                                            style="background-color: #ffe6f3;"
                                            class="accordion-button"
                                            type="button"
                                            data-bs-toggle="collapse"
                                            data-bs-target="#collapseTwo"
                                            aria-expanded="true"
                                            aria-controls="collapseTwo"
                                        >
                                        <strong style="color: black; font-weight: 800;">THƯƠNG HIỆU</strong>
                                        </button>
                                    </h2>
                                    <div
                                        id="collapseTwo"
                                        class="accordion-collapse collapse show"
                                        aria-labelledby="headingTwo"
                                        data-bs-parent="#accordionExample2"
                                    >
                                        <div class="accordion-body">
                                            <div class="list-group">
                                                <div ng-repeat="br in list_brand">
                                                    <a href="#" class="list-group-item">NIKE</a>                                                    <a href="#" class="list-group-item">{{br.name}}</a>
                                                    <a href="#" class="list-group-item">ADIDAS</a>
                                                    <a href="#" class="list-group-item">CONVERSE</a>
                                                    <a href="#" class="list-group-item">DIOR</a>
                                                    <a href="#" class="list-group-item">BALENCIAGA</a>
                                                    <a href="#" class="list-group-item">NEW BALANCE</a>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="accordion" id="accordionExample3">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingThree">
                                        <button
                                            style="background-color: #ffe6f3;"
                                            class="accordion-button"
                                            type="button"
                                            data-bs-toggle="collapse"
                                            data-bs-target="#collapseThree"
                                            aria-expanded="true"
                                            aria-controls="collapseThree"
                                        >
                                        <strong  style="color: black; font-weight: 800;">PHÂN LOẠI SẢN PHẨM</strong>
                                        </button>
                                    </h2>
                                    <div
                                        id="collapseThree"
                                        class="accordion-collapse collapse show"
                                        aria-labelledby="headingThree"
                                        data-bs-parent="#accordionExample3"
                                    >
                                        <div class="accordion-body">
                                            <div class="list-group">
                                                <a href="#" class="list-group-item">Hàng bán chạy</a>
                                                <a href="#" class="list-group-item">Hàng mới</a>
                                                <a href="#" class="list-group-item">Hàng giảm giá</a>
                                                <a href="#" class="list-group-item">Hàng đặc biệt</a>
                                                <a href="#" class="list-group-item">Hàng xem nhiều</a>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
            
                        </div>
                    </div>
                </aside>
                <div class="col-md-9">
                    <div class="row">
                        <div class="col-9">
                            <button ng-click="sortBy('name')" style="font-weight: 700; font-size: 15px; width: 150px; height: 40px; border-radius: 10px; background-color: white;">Sắp xếp theo tên</button>
                            <button ng-click="sortBy('price')" style="font-weight: 700; font-size: 15px; width: 150px; height: 40px; border-radius: 10px; background-color: white;">Sắp xếp theo giá</button></div>
                        <div class="col-3">
                            <input ng-model="txtsearch" ng-keyup="search()" class="form-control me-2" style="height: 40px; border-radius: 20px;  margin-bottom: 5px;" type="text" placeholder="Tìm sảm phẩm">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-6">        
                            <div class="card text-center">
                                <div class="card-body">
                                    <a href="" class="text-dark" style="text-decoration: none;">
                                        <img src="Picture/AF1.png" class="img-fluid"  alt="">
                                        <p> AIR FORCE 1 </p>
                                        <span style="font-weight: bold;">110 $</span>
                                    </a>
                                </div>
