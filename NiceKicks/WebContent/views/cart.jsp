<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sneakers cart</title>
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

<style>
    body{
        
        
        margin:0;
        padding: 0;

    }
</style>
 <base href="/NiceKicks/">
</head>
<body>
<jsp:include page="header.jsp">
<jsp:param value="header" name="header"/>
</jsp:include>
<main>
    <div class="container-fluid   mt-4 mb-4">
    <h1 class="py-5">Your Cart</h1>
<table class="table border text-center">
    <tr>
        
        <th scope="col ">Name</th>
        <th scope="col">Product Image</th>
        <th scope="col">Unit Price</th>
        <th scope="col">Quanity</th>
        <th scope="col">Total Price</th>
        <th></th>
    </tr>
    <tr >
        <td>KD 16</td>
        <td> <img src="images/kd16-basketball-shoes-H3gcDG.jpg" style="width: 60px;" alt=""></td>
        <td>160.0 USD</td>
        <td> <input min="1" max="100" class="text-center" type="number" ng-model="sp.soluong" placeholder="1"></td>
        <td> 160.0 USD</td>
        <td><button class="btn btn-danger" ng-click="deleProd(sp)">Delete</button></td>
    </tr>
    <tr >
        <td>Lebron 21</td>
        <td> <img src="images/lebron-xxi-freshwater-basketball-shoes-lnQSsH.jpg" style="width: 60px;" alt=""> </td>
        <td>210.0 USD</td>
        <td> <input min="1" max="100" class="text-center" type="number" ng-model="sp.soluong" placeholder="1"></td>
        <td>210.0 USD  </td>
        <td><button class="btn btn-danger" ng-click="deleProd(sp)">Delete</button></td>
    </tr>
    <tr >
        <td>GT Jump 2</td>
        <td> <img src="images/gt-jump-2-mens-basketball-shoes-CZpmDQ.png" style="width: 60px;" alt=""> </td>
        <td>185.0 USD</td>
        <td> <input min="1" max="100" class="text-center" type="number" ng-model="sp.soluong" placeholder="1"></td>
        <td>185.0 USD   </td>
        <td><button class="btn btn-danger" ng-click="deleProd(sp)">Delete</button></td>
    </tr>
    
</table>

<div class="card">

    <div class="card-header">Discount Coupon</div>
    <div class="card-body"><input type="text" style="width: 100%;"></div>
  </div>

  <div class="row">
    <div class="col-sm-8">
    </div>
    <div class="col-sm-4">
        <div class="card mt-5">
            <div class="card-header">Shipping, taxes, and discounts will be calculated at checkout.</div>
            <div class="card-body">Subtotal: <span>555 USD</span></div>
        </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-8 mt-3">
        <button class="btn btn-primary">Continue Shopping</button>

    </div>
    <div class="col-sm-4">
        <button class="btn btn-warning text-light mt-3 text-center" style="width: 100%;">Check out</button>

    </div>
  </div>
  
<!-- 
  <button data-bs-toggle="collapse" data-bs-target="#demo">Discount Coupon</button>

  <div id="demo" class="collapse">
    <input type="text" style="width: 100%;">
  </div> -->
</div>
</main>
<jsp:include page="footer.jsp">
<jsp:param value="footer" name="footer"/>
</jsp:include>
</body>
</html>
