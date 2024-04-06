<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" ng-app="myApp">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
    <link rel="stylesheet" href="index.css">

</head>
<body>
    <section class="myheader" style=" background-color: #fff;" ng-include="'Include/header.html'"></section>
    
    <section class="mymenu" >
        <div ng-view></div>
    </section>
    <section class="mycontant" ng-include="''">
    </section>
    <section class="myfooter py-4" style="height: 400px; font-weight: 700;" ng-include="'Include/Footer.html'">
    </section>

</body>
</html>
<script>
    var app = angular.module("myApp", ["ngRoute"]);
    app.config(function($routeProvider) {
        $routeProvider
        .when("/", {
            templateUrl:"home.html",
            controller:'formController'
        })
        .when("/login", {
            templateUrl:"login.html",
            controller: 'LoginController'
        })
        .when("/signup", {
            templateUrl:"Signup.html",
            controller:'signupController'
        })
        .when("/produc", {
            templateUrl:"producinfo.html",
            controller:'formController'
        })
        .when("/cart",{
            templateUrl: "cart.html",
            controller: 'cartController'
        })
        .when("/sanpham/:cateID",{
            templateUrl: "filter.html",
            controller: 'filterController'
        })
        .when("/producinfo/:sptype/:spname",{
            templateUrl: 'producinfo.html',
            controller: 'ProdController'
        })
        .when("/admin",{
            templateUrl: 'admin.html',
            controller: 'adminController'
        })
        .when("/sanpham",{
            templateUrl: 'Sanpham.html',
            controller : 'SanPhamController'
        })
    });
    </script>
    <script src="JS/Form.js"></script>
    <script src="JS/cart.js"></script>
    <script src="JS/Prod.js"></script>
    <script src="JS/signupController.js"></script>
    <script src="JS/filter.js"></script>
    <Script src="JS/ProductIf.js"></Script>
    <script src="JS/Login.js"></script> 
    <script src="JS/admin.js"></script>
    <script src="JS/sanpham.js"></script>