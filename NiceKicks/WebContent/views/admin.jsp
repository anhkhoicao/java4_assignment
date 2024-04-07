<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp">
<jsp:param value="header" name="header"/>
</jsp:include>

<div class="container mt-5">
   <ul class="nav nav-tabs">
         <li class="nav-item">
             <a class="nav-link active" id="product-tab" data-bs-toggle="tab" href="#product" role="tab" aria-controls="product" aria-selected="true ">Category</a>
         </li>
         <li class="nav-item">
             <a class="nav-link" id="category-tab" data-bs-toggle="tab" href="#category" role="tab" aria-controls="category" aria-selected="false" >Product</a>
         </li>
     </ul>
    <div class="tab-content" id="myTabContent">
         <div class="tab-pane fade show active" id="product" role="tabpanel" aria-labelledby="product-tab">
             <!-- Tab content for products -->
             <h2 class="mt-3">Product Management</h2>
             <!-- Add product form -->
             <form class="mt-3">
                 <div class="mb-3">
                     <label for="productName" class="form-label">Category name</label>
                     <input type="text" class="form-control" id="productName" placeholder="Enter product name">
                 </div>
                 <div class="mb-3">
                     <label for="productImage" class="form-label">Image</label>
                     <input type="file" class="form-control" id="productImage">
                 </div>
                 <!-- Add more fields as needed -->
                 <button type="submit"  class="btn btn-primary">Add category</button>
             </form>
             <!-- List of products -->
             <table class="table mt-3 border">
                 <!-- Table headers and product rows -->
                 <thead>
                     <tr >
                         <th>STT</th>
                         <th scope="col">Category name</th>
                         <th scope="col"></th>
                         <th></th>
                         <th></th>
                     </tr>
                 </thead>
                 <tbody>
                     <tr >
                         <td> {{$index +1}}</td>
                         <td> {{dm.type}} </td>
                         <td>
                             <img style="width: 50px; max-width: 100%;" alt="">
                         </td>
                         <td>
                         <button class="btn btn-primary"  data-bs-toggle="modal" data-bs-target="#editModal">Edit</button>
                         </td>
                         <td><button class="btn btn-danger" >Delete</button></td>
                     </tr>
                 </tbody>
             </table>
         </div>
       <div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
             <div class="modal-dialog">
                 <div class="modal-content">
                     <div class="modal-header">
                         <h5 class="modal-title" id="editModalLabel">Edit product information</h5>
                         <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                     </div>
                     <div class="modal-body">
                         <form>
                             <div class="mb-3">
                                 <label for="productName" class="form-label">Product name</label>
                                 <input type="text" class="form-control" id="product" >
                             </div>
                             <!-- Add more input fields for other product details -->
                         </form>
                     </div>
                     <div class="modal-footer">
                         <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                         <button type="button" class="btn btn-primary" >Save changes</button>
                     </div>
                 </div>
             </div>
         </div>
       <div class="tab-pane fade" id="category" role="tabpanel" aria-labelledby="category-tab">
             <!-- Tab content for categories -->
             <h2 class="mt-3">Manage product categories</h2>
             <!-- Add category form -->
             <form class="mt-3">
                 <div class="mb-3">
                     <label for="productName" class="form-label">Product name</label>
                     <input type="text" class="form-control" id="productName">
                 </div>
                 <div class="mb-3">
                     <label for="productPrice" class="form-label">Price</label>
                     <input type="number" class="form-control" id="productPrice">
                 </div>
                 <div class="mb-3">
                     <label for="productType" class="form-label">Product type</label>
                     <input type="text" class="form-control" id="productType">
                 </div>
                 <div class="mb-3">
                     <label for="productBrand" class="form-label">Brand</label>
                     <input type="text" class="form-control" id="productBrand">
                 </div>
                 <div class="mb-3">
                     <label for="productImage" class="form-label">Image</label>
                     <input type="file" class="form-control" id="productImage">
                 </div>
                 <div class="mb-3">
                     <label for="productDescription" class="form-label">Description</label>
                     <textarea class="form-control" id="productDescription" rows="3"></textarea>
                 </div>
                 <button type="submit" class="btn btn-primary">Add product</button>
             </form>
             <!-- List of categories -->
             <table class="table mt-3">
                 <thead>
                     <tr class="text-center">
                         <th scope="col">STT</th>
                         <th scope="col">Product name</th>
                         <th scope="col">Price</th>
                         <th scope="col">Brand</th>
                         <th scope="col">Image</th>
                         <th scope="col">Description</th>
                         <th scope="col">Action</th>
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
                         <td>NIKE</td>
                         <td><img src="Picture/AF1.png" style="width: 50px;" alt=""></td>
                         <td> Description here</td>
                         <td>
                             <button type="button" data-bs-target="#editSP" data-bs-toggle="modal" class="btn btn-primary">Edit</button>
                            
                         </td>
                         <td><button type="button"  class="btn btn-danger">Delete</button></td>
                     </tr>
                     <!-- Add more product items here -->
                 </tbody>
             </table>
         </div>
        <div class="modal fade" id="editSP" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
             <div class="modal-dialog">
                 <div class="modal-content">
                     <div class="modal-header">
                         <h5 class="modal-title" id="editModalLabel">Edit product information</h5>
                         <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                     </div>
                     <div class="modal-body">
                         <form>
                             <div class="mb-3">
                                 <label for="productName" class="form-label">Product name</label>
                                 <input type="text" class="form-control" id="productName">
                             </div>
                             <div class="mb-3">
                                 <label for="productPrice" class="form-label">Price</label>
                                 <input type="number" class="form-control" id="productPrice">
                             </div>
                             <div class="mb-3">
                                 <label for="productBrand" class="form-label">Brand</label>
                                 <input type="text" class="form-control" id="productBrand">
                             </div>
                             <div class="mb-3">
                                 <label for="productImage" class="form-label">Image</label>
                                 <input type="file" class="form-control" id="productImage">
                             </div>
                             <div class="mb-3">
                                 <label for="productDescription" class="form-label">Description</label>
                                 <textarea class="form-control" id="productDescription" rows="3"></textarea>
                             </div>
                             <!-- Add more input fields for other product details -->
                         </form>
                     </div>
                     <div class="modal-footer">
                         <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                         <button type="button" class="btn btn-primary" >Save changes</button>
                     </div>
                 </div>
             </div>
         </div>
     </div>
</div>
<jsp:include page="footer.jsp">
<jsp:param value="footer" name="footer"/>
</jsp:include>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

