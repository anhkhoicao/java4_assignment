<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" id="product-tab" data-bs-toggle="tab" href="#product" role="tab" aria-controls="product" aria-selected="true">Danh mục</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="category-tab" data-bs-toggle="tab" href="#category" role="tab" aria-controls="category" aria-selected="false">Sản phẩm</a>
        </li>
    </ul>
    <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="product" role="tabpanel" aria-labelledby="product-tab">
            <!-- Tab content for products -->
            <h2 class="mt-3">Quản lý sản phẩm</h2>
            <!-- Add product form -->
            <form class="mt-3">
                <div class="mb-3">
                    <label for="productName" class="form-label">Tên danh mục</label>
                    <input type="text" class="form-control" id="productName" placeholder="Nhập tên sản phẩm">
                </div>
                <div class="mb-3">
                    <label for="productImage" class="form-label">Hình ảnh</label>
                    <input type="file" class="form-control" id="productImage">
                </div>
                <!-- Add more fields as needed -->
                <button type="submit" ng-click="AddCate()" class="btn btn-primary">Thêm danh mục</button>
            </form>
            <!-- List of products -->
            <table class="table mt-3 border">
                <!-- Table headers and product rows -->
                <thead>
                    <tr >
                        <th>STT</th>
                        <th scope="col">Tên danh mục</th>
                        <th scope="col"></th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr ng-repeat="dm in list_category">
                        <td> {{$index +1}}</td>
                        <td> {{dm.type}} </td>
                        <td>
                            <img ng-src="{{dm.img}}" style="width: 50px; max-width: 100%;" alt="">
                        </td>
                        <td>
                        <button class="btn btn-primary" ng-click="Add(sp)" data-bs-toggle="modal" data-bs-target="#editModal">Edit</button>
                        </td>
                        <td><button class="btn btn-danger" ng-click="DeleteSP($index)">Delete</button></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="editModalLabel">Sửa thông tin sản phẩm</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="mb-3">
                                <label for="productName" class="form-label">Tên sản phẩm</label>
                                <input type="text" class="form-control" id="product" ng-model="selectedProduct.name">
                            </div>
                            <!-- Add more input fields for other product details -->
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                        <button type="button" class="btn btn-primary" ng-click="saveChanges()">Lưu thay đổi</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="category" role="tabpanel" aria-labelledby="category-tab">
            <!-- Tab content for categories -->
            <h2 class="mt-3">Quản lý loại sản phẩm</h2>
            <!-- Add category form -->
            <form class="mt-3">
                <div class="mb-3">
                    <label for="productName" class="form-label">Tên sản phẩm</label>
                    <input type="text" class="form-control" id="productName">
                </div>
                <div class="mb-3">
                    <label for="productPrice" class="form-label">Giá</label>
                    <input type="number" class="form-control" id="productPrice">
                </div>
                <div class="mb-3">
                    <label for="productType" class="form-label">Loại sản phẩm</label>
                    <input type="text" class="form-control" id="productType">
                </div>
                <div class="mb-3">
                    <label for="productBrand" class="form-label">Thương hiệu</label>
                    <input type="text" class="form-control" id="productBrand">
                </div>
                <div class="mb-3">
                    <label for="productImage" class="form-label">Hình ảnh</label>
                    <input type="file" class="form-control" id="productImage">
                </div>
                <div class="mb-3">
                    <label for="productDescription" class="form-label">Mô tả</label>
                    <textarea class="form-control" id="productDescription" rows="3"></textarea>
                </div>
                <button type="submit" ng-click="AddProd()" class="btn btn-primary">Thêm sản phẩm</button>
            </form>
            <!-- List of categories -->
            <table class="table mt-3">
                <thead>
                    <tr class="text-center">
                        <th scope="col">STT</th>
                        <th scope="col">Tên sản phẩm</th>
                        <th scope="col">Giá</th>
                        <th scope="col">Thương hiệu</th>
                        <th scope="col">Hình ảnh</th>
                        <th scope="col">Mô tả</th>
                        <th scope="col">Thao tác</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Product items will be listed here -->
                    <tr class="text-center">
                        <th scope="row"> {{$index +1}}</th>
                        <td> AIR FORCE 1</td>
                        <td> 110</td>
                        <td> NIKE</td>
                        <td><img src="Picture/AF1.png" style="width: 50px;" alt=""></td>
                        <td> Mô tả tại đây</td>
                        <td>
                            <button type="button" data-bs-target="#editSP" data-bs-toggle="modal" class="btn btn-primary">Sửa</button>
                            
                        </td>
                        <td><button type="button" ng-click="DeleteSP($index)" class="btn btn-danger">Xóa</button></td>
                    </tr>
                    <!-- Add more product items here -->
                </tbody>
            </table>
        </div>
        <div class="modal fade" id="editSP" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="editModalLabel">Sửa thông tin sản phẩm</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="mb-3">
                                <label for="productName" class="form-label">Tên sản phẩm</label>
                                <input type="text" class="form-control" id="productName">
                            </div>
                            <div class="mb-3">
                                <label for="productPrice" class="form-label">Giá</label>
                                <input type="number" class="form-control" id="productPrice">
                            </div>
                            <div class="mb-3">
                                <label for="productBrand" class="form-label">Thương hiệu</label>
                                <input type="text" class="form-control" id="productBrand">
                            </div>
                            <div class="mb-3">
                                <label for="productImage" class="form-label">Hình ảnh</label>
                                <input type="file" class="form-control" id="productImage">
                            </div>
                            <div class="mb-3">
                                <label for="productDescription" class="form-label">Mô tả</label>
                                <textarea class="form-control" id="productDescription" rows="3"></textarea>
                            </div>
                            <!-- Add more input fields for other product details -->
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                        <button type="button" class="btn btn-primary" ng-click="saveChanges()">Lưu thay đổi</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

