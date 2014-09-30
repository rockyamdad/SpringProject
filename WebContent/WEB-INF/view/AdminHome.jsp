<%@ include file="header.jsp" %>
    <br>
    <center>

<h3>User List</h3>
<br><br>
<c:if test="${!empty userslist}">
<div style="margin-left:200px;margin-right:200px">
    <table id="dataList" class="table table-hover" border="1">
        <thead style="background-color:gray">
			<th> Id</th>
			<th>Name</th>
			<th>Birthdate</th>
			<th>Gender</th>
			<th>Phone</th>
			<th>Email</th>
			<th>Type</th>
			<th>Update</th>
			<th>Status</th>

		</thead>
<c:forEach items="${userslist}" var="userslist">
<tr>
<td><c:out value="${userslist.id}"/></td>
<td><c:out value="${userslist.name}"/></td>
<td><c:out value="${userslist.dob}"/></td>
<td><c:out value="${userslist.gender}"/></td>
<td><c:out value="${userslist.phone}"/></td>
<td><c:out value="${userslist.email}"/></td>
<td><c:out value="${userslist.type}"/></td>
<td><a href="update.html?id=${userslist.id}">Update</a></td>

<c:choose> 
	<c:when test="${userslist.status == 1}">
		<td><a href="statusdeactive.html?id=${userslist.id}">Active</a></td>
	</c:when>
	<c:otherwise>
		<td><a href="statusactive.html?id=${userslist.id}">Deactive</a></td>
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