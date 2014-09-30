<%@ include file="header.jsp" %>
<center>
<br><br>
<h3>Product List</h3>
<br><br>
<c:if test="${!empty productlist}">
<div style="margin-left:200px;margin-right:200px">
    <table id="dataList" class="table table-hover" border="1">
        <thead style="background-color:gray">

			<th>Name</th>
			<th>Image</th>
			<th>Type</th>
			<th>Description</th>
			<th>Usertype</th>
			<th>Price</th>
			<th>Quantity</th>
			
			<th>Status</th>

		</thead>
<c:forEach items="${productlist}" var="productlist">
<tr>
<td><c:out value="${productlist.name}"/></td>
<td><img src="<c:url value="/resources/content/images/${productlist.image}"/>" alt="Smiley face" height="194" width="124" />
</td>
<td><c:out value="${productlist.type}"/></td>
<td><c:out value="${productlist.description}"/></td>
<td><c:out value="${productlist.usertype}"/></td>
<td><c:out value="${productlist.price}"/></td>
<td><c:out value="${productlist.quantity}"/></td>

<c:choose>
	<c:when test="${productlist.status==1}">
        <td><a href="deactiveproduct.html?id=${brandlist.id}">Active</a></td>
    </c:when>
    <c:otherwise>
    	<td><a href="activeproduct.html?id=${brandlist.id}">Deactive</a></td>
    </c:otherwise>
</c:choose>


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