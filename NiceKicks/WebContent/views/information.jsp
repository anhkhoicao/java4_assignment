<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp">
<jsp:param value="header" name="header"/>
</jsp:include>
<main>
  <div class="wrapper" >
<form action="">
    <h1>Checkout</h1>
    <div class="input-box">
<div class="input-field">
<input type="text" placeholder="Full Name" required>
<i class='bx bxs-user'></i>
</div>
<div class="input-field">
    <input type="date" placeholder="Date" required>
<i class='bx bxs-calendar'></i>
</div>
    </div>
    <div class="input-box">
        <div class="input-field">
            <input type="email" placeholder="Email" required>
            <i class='bx bxl-gmail'></i>
        </div>
        <div class="input-field">
            <input type="number" placeholder="Phone Number" required>
            <i class='bx bxs-phone'></i>            
        </div>
    </div>
    <div class="input-box">
        <div class="input-field">
            <input type="text" placeholder="Address" required>
            <i class='bx bxs-location-plus'></i>
        </div>
        <div class="input-field">
            <input type="text" placeholder="Transaction" required>
            <i class='bx bx-cart'></i>
        </div>
    </div>
    <!-- <label ><input type="checkbox">I hereby declare that the above information provided is true and correct</label> <br> -->
    <button type="submit" class="btn" style="color: white;">Confirm</button>
</form>
    </div>
    </main>
    <jsp:include page="footer.jsp">
<jsp:param value="footer" name="footer"/>
</jsp:include>
</body>
</html>