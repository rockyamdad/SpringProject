<%@ include file="header.jsp" %>
<center>


<br><br>
 <article id="mainview">
 <h3>Detail Info</h3>
    <div id="description">
<c:if test="${!empty productdetail}">

 <c:out value="${productdetail.name}"></c:out><br><br>
 
 <c:out value="${productdetail.price}"></c:out><br><br>

   Description:<c:out value="${productdetail.description}"></c:out><br><br>
   
   
<form id="buyform" method="post" action="hgfj.html">
Quantity
<input type="text" name="quantity"/><br><br>
<p><button type="submit"  class="continue">Add to bag</button></p>
</form>
         <p><button type="button" >Tell a friend</button></p>
        <div id="tabs">
            <ul>
                <li><a href="#tabs-1" class="first">Delivery</a></li>
                <li><a href="#tabs-2">Returns</a></li>
                <li><a href="#tabs-3">Info &amp; Care</a></li>
            </ul>
           
            <section id="tabs-2">
              <p>If you are not completely satisfied with your purchase, simply return the items to us in their original condition and packaging within 28 days of receipt and we will issue a full refund (excluding original delivery charge), or exchange the item for a different size / colour, if preferred.</p>
              
            </section>
            
        </div>
</div>



 <div id="images" >
  <p>Rollover to zoom. Click to enlarge.</p>
       
        <div id="productthumbs">
            <span class='zoom' id='ex3'>
<c:choose> 
	<c:when test="${productdetail.status == 1}">
	<img src="<c:url value="/resources/content/images/${productdetail.image}"/>" alt="Smiley face"  style="height:290px; width:290px"/>
	</c:when>
</c:choose>
<p>Click to activate</p>
	</span>
        </div>
    </div>
        

</c:if>
</article>
<br>
</center>
<jsp:include page="footer.jsp"></jsp:include>