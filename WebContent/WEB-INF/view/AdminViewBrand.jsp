<%@ include file="header.jsp" %>
<center>
<br><br>
<h3>Brands List</h3>
<br><br>
<c:if test="${!empty brandlists}">
<div style="margin-left:200px;margin-right:200px">
    <table id="dataList" class="table table-hover" border="1">
        <thead style="background-color:gray">
			<th>Name</th>
			<th>Action</th>


		</thead>
<c:forEach items="${brandlists}" var="brandlists">
<tr>

<td><c:out value="${brandlists.name}"/></td>
<td><a href="adminviewproduct.html?id=${brandlists.id}">View Product List</a></td>

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