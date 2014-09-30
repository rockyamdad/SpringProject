<%@ include file="header.jsp" %>lude>
   
    <center>
 <br>
<h3>Product List</h3>
<br><br>
<c:if test="${!empty products}">
<div style="margin-left:200px;margin-right:200px">
    <table id="dataList" class="table table-hover" border="1">
        <thead style="background-color:gray">
			<th> Id</th>
			<th>Name</th>
			<th>Image</th>
			<th>Description</th>
			<th>Type</th>
			<th>Price</th>
			<th>UserType</th>
			<th>Quantity</th>
			<th>Update</th>
			<th>Status</th>

		</thead>
<c:forEach items="${products}" var="products">
<tr>
<td><c:out value="${products.id}"/></td>
<td><c:out value="${products.name}"/></td>
<td><img src="<c:url value="/resources/content/images/${products.image}"/>" alt="Smiley face" height="194" width="124" /></td>
<td><c:out value="${products.description}"/></td>
<td><c:out value="${products.type}"/></td>
<td><c:out value="${products.price}"/></td>
<td><c:out value="${products.usertype}"/></td>
<td><c:out value="${products.quantity}"/></td>
<td><a href="productUpdate.html?id=${products.id}">Update</a></td>
<td></td>
</tr>
</c:forEach>
</table>
</div>
</c:if>
<br>
</center>
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript">
    $(document).ready(function () {
        $('#dataList').dataTable({
            "bJQueryUI": false,
            "bPaginate": true,
            "bLengthChange": true,
            "bFilter": true,
            "bSort": true,
            "bInfo": true,
            "bAutoWidth": false,
            "sPaginationType": "full_numbers"
        });
    });
</script>