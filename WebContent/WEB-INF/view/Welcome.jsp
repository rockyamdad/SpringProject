<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="<c:url value="/resources/content/css/main.css" />" rel="stylesheet">
<link href="<c:url value="/resources/content/css/reset.css" />" rel="stylesheet">
<link href="<c:url value="/resources/content/css/slidercss.css" />" rel="stylesheet">

<script src="<c:url value="/resources/content/js/jquery-1.6.min.js" />"></script>

<script src="<c:url value="/resources/content/js/cufon-yui.js" />"></script>
<script src="<c:url value="/resources/content/js/tms-0.js" />"></script>
<script src="<c:url value="/resources/content/js/tms_presets.js" />"></script>
<script src="<c:url value="/resources/content/js/jquery.js" />"></script>
<script src="<c:url value="/resources/content/js/WholeInsert4.js" />"></script>


<title>Welcome</title>
</head>
<body>
<center>

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
    
    
    <div id="main_content">
            
        <div id="slideshow_area">
        
        <div class="container">
            
            <div id="slideshow_container">

            <br><br><br> 
				<div class="row-3">
					<div class="slider-wrapper">
	
					<div class="slider">
						  <ul class="items">
							<li>
							<img src="<c:url value="/resources/content/images/slider-img1.jpg" />" alt="Buy" />
								<strong class="banner">
									<strong class="b1">20% Discount</strong>
									<strong class="b2">LET'S ROCK</strong>
									<strong class="b3">Offer Limited<br> Click To Learn More....</strong>
                                   
								</strong>
							</li>
							
							<li><img src="<c:url value="/resources/content/images/slider-img2.jpg" />" alt="Sell" />
								<strong class="banner">
									<strong class="b1">Exclusive!!</strong>
									<strong class="b2">  EXECUTIVE LOOK :)</strong>
									<strong class="b3">Be The First<br>Click To Learn More...</strong>
								</strong>
							</li>
							
							<li><img src="<c:url value="/resources/content/images/slider5.jpg" />" alt="Ohho" />
								<strong class="banner">
									<strong class="b1">Classic Series</strong>
									<strong class="b2">DON'T MISS!!!</strong>
									<strong class="b3">For You Gorgeous!!!<br>Click To Learn More...</strong>
								</strong>
							</li>
							
							
						  </ul>
						  <a class="prev" href="#">prev</a>
						  <a class="next" href="#">prev</a>
						</div>
						
							</div>
				</div>

<script type="text/javascript"> Cufon.now(); </script>
	<script type="text/javascript">
	    $(function () {
	        $('.slider')._TMS({
	            prevBu: '.prev',
	            nextBu: '.next',
	            playBu: '.play',
	            duration: 800,
	            easing: 'easeOutQuad',
	            preset: 'simpleFade',
	            pagination: false,
	            slideshow: 3000,
	            numStatus: false,
	            pauseOnHover: true,
	            banners: true,
	            waitBannerAnimation: false,
	            bannerShow: function (banner) {
	                banner
						.hide()
						.fadeIn(500)
	            },
	            bannerHide: function (banner) {
	                banner
						.show()
						.fadeOut(500)
	            }
	        });
	    })
	</script>

                </div>

        </div> <!-- END .container -->
    
        </div> <!-- END #slideshow_area -->
            
        <div id="mid_content">
            
            <div class="container">
                
            <div class="mid_content_info mid_content_space">
                    
                <h2 id="clean">CLEAN THEME</h2>
                <p>Ut nec lorem id orci convallis porta. Donec pharetra neque eu velit dictum molestie. Duis porta gravida augue sed viverra. Quisque at nulla leo,
                non aliquet mi.</p>
                
                    
            </div>
                
            <div class="mid_content_info mid_content_space">

                <h2 id="responsive">RESPONSIVE DESIGN</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi euismod placerat dui et tincidunt. Sed sollicitudin posuere auctor. Phasellus at
                ultricies nisl. Integer at leo eros.</p>
               
                    
            </div>
                
            <div class="mid_content_info mid_content_space">
                    
                <h2 id="fully">FULLY LAYERED PSD</h2>
                <p>Phasellus lobortis metus non augue sodales volutpat. Vestibulum sit amet nibh eros, hendrerit venenatis est. In vitae nulla nec purus cursus
                pretium sed id magna.</p>
                
                    
            </div>
                
            <div class="mid_content_info">
                    
                <h2 id="ready">READY FOR CODING</h2>
                <p>Vivamus convallis feugiat mauris sed posuere. Nam rutrum, quam quis euismod commodo, elit est porta quam, non placerat eros neque porta ante.
                Fusce quis odio urna.</p>
               
                    
            </div>
            
            </div> <!-- END .container -->
                
        </div> <!-- END #mid_content -->
    
        
    
       
    
        
        
    </div> <!-- END #main_content -->
<div id="footer">
        
        <div class="container">
            
            <div id="footer_about" class="footer_info">
                
                <h5>about us</h5>
                <p>Too often, interactions with the government are burdensome and frustrating. From seeking out financing opportunities to learning about the latest regulations affecting them, hard-working businesses are spending too much time navigating the federal bureaucracy. </p>
                
            </div> <!-- END #footer_about -->
            
            <div id="footer_explore" class="footer_info">
                
                <h5>explore</h5>
                <ul>
                     <li><a  href="welcome.html" >Home</a></li>
                     <li><a  href="register.html" >Registration</a></li>
                     <li><a  href="viewProduct.html" >View Product</a></li>
                     <li><a  href="brands.html" >Brands</a></li>
                    
                    
                </ul>
                
            </div> <!-- END #footer_about -->
            
            <div id="footer_browse" class="footer_info">
                
                <h5>browse</h5>
                <ul>
                     <li>
                    <a href="aboutUs.html">careers</a>
                    
                </li>
                    <li >
                    <a  href="aboutUs.html" >press &amp; media</a>
                    
                </li>
                     <li>
                    <a  href="aboutUs.html" >contact us</a>
                    
                </li>
                    <li>
                    <a href="aboutUs.html" >terms of service</a>
                    
                </li>
                    <li>
                    <a href="aboutUs.html" >privacy policy</a>
                    
                </li>
                </ul>
                
            </div> <!-- END #footer_about -->
            
            <div id="footer_contact" class="footer_info">
                
                <h5>contact us</h5>
                <p><span class="bold_text">BisLite Inc.</span>
                <br />
                Always Street 265
                <br />
                0X - 125 - Canada
                <br />
                <br />
                Phone: 987-6543-210
                <br />
                Fax: 987-6543-210</p>
                
            </div> <!-- END #footer_about -->
            
            <div id="footer_connect" class="footer_info">
                
                <h5>connect with us</h5>
                
                <ul>
                    <li><a href="#" id="facebook" title="Facebook">Facebook</a></li>
                    <li><a href="#" id="dribbble" title="Dribbble">Dribbble</a></li>
                    <li><a href="#" id="pinterest" title="Pinterest">Pinterest</a></li>
                    <li><a href="#" id="linkedin" title="LinkedIn">LinkedIn</a></li>
                    <li><a href="#" id="skype" title="Skype">Skype</a></li>
                    <li><a href="#" id="sharethis" title="Share This">ShareThis</a></li>
                </ul>
                
            </div> <!-- END #footer_about -->
            
            <p id="copyright">&copy; Copyright 2012 - BisLite Inc. All rights reserved. Some free icons used here are created by Brankic1979.com.
            <br />
            Client Logos are copyright and trademark of the respective owners / companies.</p>
            
            <a href="index.html" id="footer_logo">BisLite</a>
        
        </div> <!-- END .container -->
        
    </div> <!-- END #footer -->



</center>
</body>
</html>