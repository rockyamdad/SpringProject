<%@ include file="header.jsp" %>
    
<center>

<h3>Brands</h3>
<br><br>

<c:if test="${!empty brandslogo}">
<c:forEach items="${brandslogo}" var="brandslogo">
<c:choose> 
	<c:when test="${brandslogo.status == 1}">
		<a href="productBrand.html?id=${brandslogo.id}"><img src="<c:url value="/resources/content/images/${brandslogo.logo}"/>" alt="Smiley face"  style="height:230px; width:180px"/></a>
	</c:when>
</c:choose>
</c:forEach>

</c:if>
<br>
</center>
<jsp:include page="footer.jsp"></jsp:include>