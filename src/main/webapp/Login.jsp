<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<title>Pet Shop</title>
<meta charset="iso-8859-1">
<link href="css/style.css" rel="stylesheet" type="text/css">
<!--[if IE 6]><link href="css/ie6.css" rel="stylesheet" type="text/css"><![endif]-->
<!--[if IE 7]><link href="css/ie7.css" rel="stylesheet" type="text/css"><![endif]-->
</head>
<body>
	
	<c:url var="PetController" value="pet">
		<c:param name="mode" value="LIST"></c:param>
	</c:url>

<div id="header"> <a href="#" id="logo"><img src="images/logo.gif" width="200" height="114" alt=""></a>
  <ul class="navigation">
    <li class="active"><a href="index.jsp">Home</a></li>
    <li><a href="petmart.jsp">PetMart</a></li>
    <li><a href="Login.jsp">Login</a></li>
    <li><a href="Register.jsp">SignUp</a></li>
    <li><a href="PetController">PetMember</a></li>
    <li><a href="contact.jsp">Contact Us</a></li>
  </ul>
</div>
<div id="body">
  
  <div class="container">
    <form action="user" method="post">
        <h2 class="mb-3 text-center">Please Sign in</h2>
        
        
        <input type="hidden" name="mode" value="SIGNIN">
        
        <c:if test="${loginFail }">
        <div class="mb-3">
        <span class="alert alert-danger"> Username or password is incorrect</span>
        </div>
        </c:if>
        
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter Your Email" class="form-control" required="required" autofocus>
        </div>
        
         <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter Your Password" class="form-control" required="required" autofocus>
        </div>
        
        <button type="submit" class="btn btn-primary">Submit</button>
        <button type="reset" class="btn btn-danger">Reset</button>
    </form> <!-- /form -->
     <p> Don't have an account? <a href="SignUp.jsp">Please Sign up</a> </p>
</div> <!-- ./container -->
  
</div>
<div id="footer">
  <div class="section">
    <ul>
      <li> <img src="images/friendly-pets.jpg" width="240" height="186" alt="">
        <h2><a href="#">Friendly Pets</a></h2>
        <p> Lorem ipsum dolor sit amet, consectetuer adepiscing elit, sed diam nonummy nib. <a class="more" href="#">Read More</a> </p>
      </li>
      <li> <img src="images/pet-lover2.jpg" width="240" height="186" alt="">
        <h2><a href="#">How dangerous are they</a></h2>
        <p> Lorem ipsum dolor sit amet, cons ectetuer adepis cing, sed diam euis. <a class="more" href="#">Read More</a> </p>
      </li>
      <li> <img src="images/healthy-dog.jpg" width="240" height="186" alt="">
        <h2><a href="#">Keep them healthy</a></h2>
        <p> Lorem ipsum dolor sit amet, consectetuer adepiscing elit, sed diam nonu mmy. <a class="more" href="#">Read More</a> </p>
      </li>
      <li>
        <h2><a href="#">Love...love...love...pets</a></h2>
        <p> Lorem ipsum dolor sit amet, consectetuer adepiscing elit, sed diameusim. <a class="more" href="#">Read More</a> </p>
        <img src="images/pet-lover.jpg" width="240" height="186" alt=""> </li>
    </ul>
  </div>
  <div id="footnote">
    <div class="section">Copyright &copy; 2012 <a href="#">Company Name</a> All rights reserved | Website Template By <a target="_blank" href="http://www.freewebsitetemplates.com/">freewebsitetemplates.com</a></div>
  </div>
</div>
</body>
</html>
