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
    <section class="mybody py-4">
        <div class="container" style=" border: 1px solid palevioletred ">
            <div class="row text-light text-center" style="height: 700px; box-shadow: 0 10px 20px 0 rgba(58, 75, 205, .33);">
            <div class="col-8">
                <img src="Picture/nike-just-do-it.png" style=" width: 925px; height: 700px; " alt="">
            </div>
            <div class="col-4 text-center" style="border-left: 1px solid palevioletred; ">
                <div class="header" style="height: 100px;">
                    <h1 class="text-dark py-4">Sign Up</h1>
                    <hr class="text-dark">
                    <form name="myForm" >
                        <div class="form-group py-3">
                            <input type="text" name="user.name" required style="border-radius: 5px; font-size: 20px; height: 50px;" class="form-control" placeholder="Username">
                        </div>
                        <div class="form-group py-3">
                            <input type="email" name="user.email"required style="border-radius: 5px; font-size: 20px; height: 50px;" class="form-control" placeholder="Email">
                        </div>
                        <div class="form-group py-3">
                            <input type="password" name="user.pass"  required style="border-radius: 5px; font-size: 20px; height: 50px;" class="form-control" placeholder="Password">
                        </div>
                        <div class="form-group py-3">
                            <input type="password" name="user.cfpass"  required style="border-radius: 5px; font-size: 20px; height: 50px;" class="form-control" placeholder="Confirm Password">
                        </div>
                    </form>
                    <div class="form-check text-start text-dark py-2">
                        <input class="form-check-input" type="checkbox">I agree with <a href="#"> terms of use.</a>
                    </div>
                    <div class="form-group text-start text-dark py-1">
						<p>Don't remember your password? <a href="#" style="text-decoration: none;">Forgot your password?</a></p>
                    </div>
                    <div class="button-login py-3">
                        <button class="btn btn-success text-white" style="width: 350px; height: 50px; border-radius: 50px;">Sign Up </button>
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