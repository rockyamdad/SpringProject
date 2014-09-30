<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="/resources/content/css/look.css" />" rel="stylesheet">
<link href="<c:url value="/resources/content/css/main.css" />" rel="stylesheet">
<link href="<c:url value="/resources/content/css/google1.css" />" rel="stylesheet">


<link href="<c:url value="/resources/content/css/reset.css" />" rel="stylesheet">
<link href="<c:url value="/resources/content/css/slidercss.css" />" rel="stylesheet">


<script src="<c:url value="/resources/content/js/jquery-1.10.2.min.js" />"></script>
<script src="<c:url value="/resources/content/js/jquery.validate.min.js" />"></script>
<script src="<c:url value="/resources/content/js/additional-methods.min.js" />"></script>

<script src="<c:url value="/resources/content/js/jquery.dataTables.js" />"></script>

<script src="<c:url value="/resources/content/js/google2.js" />"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script>
    $(function () {
        $("#datepicker").datepicker();
        $("#datepicker2").datepicker();
    
    });
</script>
<title></title>
</head>
<body>

<div id="header">
        
        <div class="container">
        <h3><a href="welcome.html">Brands Heaven</a></h3>
        
        
        <div id="main_menu">
        
            <ul>
                <li class="first_list"><a style="color:black" href="welcome.html" class="main_menu_first main_current">Home</a></li>
               
				
				 
                <li class="first_list"><a style="color:black" href="viewProduct.html" class="main_menu_first">View Product</a></li>


                                                                                 
                <li class="first_list">
                    <a style="color:black" href="brands.html"  class="main_menu_first">Brands</a>
                    
                </li>
                <li class="first_list">
                    <a style="color:black" href="viewCart.html" class="main_menu_first">Shopping Cart</a>
                    
                </li>
               
               
	<c:choose> 
		<c:when test="${type == 'brand'}">
			 <li class="first_list"><a style="color:black" href="uploadproduct.html" class="main_menu_first">Upload Product</a></li>
			  <li class="first_list"><a style="color:black" href="brandupdate.html?id=${id}" class="main_menu_first">Update Profile</a></li>
			   <li class="first_list"><a style="color:black"  href="brandproducts.html?id=${id}" class="main_menu_first">My Products</a></li>
		</c:when>
		<c:when test="${type == 'client'}">
			
		</c:when>
		<c:when test="${type == 'admin'}">
		
			<li class="first_list"><a style="color:black" href="adminregister.html" class="main_menu_first">ADD ADMIN</a></li>
			<li class="first_list"><a style="color:black" href="brandlist.html" class="main_menu_first">BRANDLIST</a></li>
			<li class="first_list"><a style="color:black" href="adminviewbrand.html" class="main_menu_first">PRODUCTLIST</a></li>
			<li class="first_list"><a style="color:black" href="brandregister.html" class="main_menu_first">ADD BRAND</a></li>
		</c:when>
	
	</c:choose>
	<c:choose> 
			<c:when test="${type == null}">
				<li class="first_list"><a style="color:black" href="register.html" class="main_menu_first">Registration</a></li>
			    <li class="first_list"><a style="color:black" href="login.html" class="main_menu_first">Login to Heaven</a></li>
                
				<li class="first_list"><a style="color:black" href="branduserlogin.html" class="main_menu_first">Login Brand</a></li>
			</c:when>
			<c:otherwise>
			
				<li class="first_list"><a style="color:black" href="logout.html" class="main_menu_first">Logout</a></li>
			
			</c:otherwise>
	
    </c:choose>  
            </ul>
        
       </div> <!-- END #main_menu -->
    
        </div> <!-- END .container -->
    
    </div> <!-- END #header -->
  