<%@ include file="header.jsp" %>
    <center>
   
        <div id="main_content">
            
        <div id="portfolio_area">
            
            <div class="container">
            
            <h3>Product List</h3>

<c:if test="${!empty productsView}">
     <div id="portfolio_menu">
                
                <ul>
                    <li><a href="viewProduct.html" class="portfolio_menu_current">All Product</a></li>
                    <li><a href="searchViewProduct.html?usertype=Man" class="portfolio_menu_current">Men</a></li>
                    <li><a href="searchViewProduct.html?usertype=Woman" class="portfolio_menu_current">Women</a></li>
                    <li><a href="searchViewProduct.html?usertype=kids" class="portfolio_menu_current">Kids</a></li>
                    
                    
                </ul>
                
            </div> <!-- END #portfolio_menu -->
 <div id="portfolio_list">
<ul>

<c:forEach items="${productsView}" var="productsView">
<c:choose> 
	<c:when test="${productsView.status == 1}">
	
            
	<li class="gallery">
		<a href="productDetails.html?id=${productsView.id}"><em><b> ${productsView.name} </b>Price ${productsView.price}/=</em><img src="<c:url value="/resources/content/images/${productsView.image}"/>" alt="Smiley face"  style="height:170px; width:140px"/></a>
	</li>
	
	</c:when>
</c:choose>
</c:forEach>

</c:if>
</ul>



 </div> <!-- END .container -->
            
        </div> <!-- END #portfolio_area -->
        
    </div> <!-- END #main_content -->
</center>
<jsp:include page="footer.jsp"></jsp:include>

