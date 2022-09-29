<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.ftco-navbar{
background-color:white!important;
}

.bg-dark {
    background-color: white!important;
}
.ftco-navbar-light .navbar-brand {
    color: white;
}
.nav-link span{
color: black;
}
.cart{
width: 30px;
height: 40px;

}


#test01{
position: absolute;
text-align: right;
margin-left: 730px;
margin-bottom: 30px;
}

</style>

</head>
 <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
	    <div class="container" >    
	      
	      <a class="navbar-brand" href="home.do" >J-TRIP</a>
		 
	    
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
		

	      <div class="collapse navbar-collapse" id="ftco-nav2">
 			
	        <ul class="navbar-nav nav ml-auto">
	          <li class="nav-item"><a href="home.do" class="nav-link"><span>Home</span></a></li>
	          <li class="nav-item"><a href="info.do" class="nav-link"><span>Info</span></a></li>
	          <li class="nav-item"><a href="product.do" class="nav-link"><span>Product</span></a></li>
	           <li class="nav-item"><a href="reviewBusan.do" class="nav-link"><span>Review</span></a></li>
	          <li class="nav-item"><a href="qna.do" class="nav-link"><span>Custom Center</span></a></li>
	          
	          <li class="nav-item"><a href="login.do" class="nav-link"><span>Login</span></a></li>
	          
	          <li class="nav-item"><a href="myPageMain.do" class="nav-link"><span>MyPage</span></a></li>
	          <li class="nav-item"><a href="cart.do" class="nav-link"><span>Cart</span></a></li>
	             <li class="nav-item"><a href="logout.do" class="nav-link"><span>Logout</span></a></li>
	             <li class="nav-item"><a href="adminProduct.do" class="nav-link"><span>Admin</span></a></li>
	        </ul>
	      </div>
	</div>
	  </nav>

</body>
</html>