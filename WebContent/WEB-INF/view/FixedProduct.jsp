<%@ include file="header.jsp" %>
    <center>
   
        <div id="main_content">
            
        <div id="portfolio_area">
            
            <div class="container">
            
            <h3>Product List </h3>


<c:if test="${!empty products}">
     <div id="portfolio_menu">
                
                <ul>
                    <li><a href="productBrand.html?id=${brand_id}" class="portfolio_menu_current">All Product</a></li>
                    <li><a href="searchProduct.html?usertype=Man&id=${brand_id}" class="portfolio_menu_current">Men</a></li>
                    <li><a href="searchProduct.html?usertype=Woman&id=${brand_id}" class="portfolio_menu_current">Women</a></li>
                    <li><a href="searchProduct.html?usertype=kids&id=${brand_id}" class="portfolio_menu_current">Kids</a></li>
                    
                    
                </ul>
                
            </div> <!-- END #portfolio_menu -->
 <div id="portfolio_list">
<ul>

<c:forEach items="${products}" var="products">
<c:choose> 
	<c:when test="${products.status == 1}">
	
            
	<li class="gallery">
		<a href="productDetails.html?id=${products.id}"><em><b> ${products.name} </b>Price ${products.price}/=</em><img src="<c:url value="/resources/content/images/${products.image}"/>" alt="Smiley face"  style="height:170px; width:140px"/></a>
	</li>
	
	</c:when>
</c:choose>
</c:forEach>
</c:if>

</ul>
</div>

 </div> <!-- END .container -->
            
        </div> <!-- END #portfolio_area -->
        
    </div> <!-- END #main_content -->
</center>
<jsp:include page="footer.jsp"></jsp:include>

