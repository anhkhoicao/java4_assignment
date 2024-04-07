<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<jsp:include page="header.jsp">
<jsp:param value="header" name="header"/>
</jsp:include>
    <section class="mybody py-4">
        <div class="container" style="border: 1px solid palevioletred">
            <div class="row text-light text-center" style="height: 700px; box-shadow: 0 10px 20px 0 rgba(58, 75, 205, .33);">
                <div class="col-8">
                    <img src="Picture/nike-just-do-it.png" style="width: 925px; height: 700px;" alt="">
                </div>
                <div class="col-4 text-center" style="border-left: 1px solid palevioletred;">
                    <div class="header" style="height: 100px;">
                        <h1 class="text-dark py-4">Login</h1>
                        <form>
                            <div class="form-group py-3">
                                <input type="text" ng-model="username" ng-change="setUsernameEntered()" required style="border-radius: 5px; font-size: 20px; height: 50px;" class="form-control" placeholder="Tài khoản">
                            </div>
                            <div class="form-group py-3">
                                <input type="password" ng-model="password" required style="border-radius: 5px; font-size: 20px; height: 50px;" class="form-control" placeholder="Mật khẩu">
                            </div>
                            <div class="text-start alert alert-danger" ng-show="showError" role="alert">
                                (*)Check your password
                            </div>
                            <div class="text-start alert alert-danger" ng-show="usernameInvalid">
                                (*) Fill in the Username
                            </div>
                            <div class="text-start alert alert-danger" ng-show="passwordInvalid">
                                (*) Please do not leave the password blank
                            </div>
                            <button type="button" ng-click="login()" class="btn btn-success text-white" style="width: 350px; height: 50px; border-radius: 50px; font-weight: 700;">Login</button>

                        </form>

                        
                        
                        <div class="form-group py-1">
                            <p class="text-dark">You don't remember your password? </p><a href="#" style="text-decoration: none;">Forgot password?</a>
                        </div>
                        <div class="form-group text-dark">
                            <p>Do not have an account? <a href="#!signup" style="text-decoration: none;">Create Account?</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <jsp:include page="footer.jsp">
<jsp:param value="footer" name="footer"/>
</jsp:include>
</body>
</html>
