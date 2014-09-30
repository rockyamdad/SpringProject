<%@ include file="header.jsp" %>
<center>
<br><br>
<h3>Brand List</h3>

<c:if test="${!empty brandslist}">
<div style="margin-left:200px;margin-right:200px">
    <table id="dataList" class="table table-hover" border="1">
        <thead style="background-color:gray">
			<th> Id</th>
			<th>Name</th>
			<th>Logo</th>
			<th>Description</th>
			<th>Phone</th>
			<th>Email</th>
			<th>Outlet</th>
			<th>Update</th>
			<th>Status</th>
		</thead>

<c:forEach items="${brandslist}" var="brandslist">
<tr>
<td><c:out value="${brandslist.id}"/></td>
<td><c:out value="${brandslist.name}"/></td>
<td><img src="<c:url value="/resources/content/images/${brandslist.logo}"/>" alt="Smiley face" height="194" width="124" /></td>
<td><c:out value="${brandslist.description}"/></td>
<td><c:out value="${brandslist.contact}"/></td>
<td><c:out value="${brandslist.email}"/></td>
<td><c:out value="${brandslist.outlet}"/></td>
<td><a href="brandupdate.html?id=${brandslist.id}">Update</a></td>
<c:choose> 
	<c:when test="${brandslist.status == 1}">
		<td><a href="brand/statusdeactive.html?id=${brandslist.id}">Active</a></td>
	</c:when>
	<c:otherwise>
		<td><a href="brand/statusactive.html?id=${brandslist.id}">Deactive</a></td>
	</c:otherwise>

</c:choose>

</tr>
</c:forEach>
</table>
</div>
</c:if>
<br>
<a href="adminhome.html" >back</a>

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