<%@ include file="header.jsp" %>
    <center>

<table>
<tr style="margin-bottom:5px ">
<td>Name :</td><td> <span>${info.name}</span></td></tr>
<tr></tr>
<tr><td>Logo :</td><td > <img src="<c:url value="/resources/content/images/${info.logo}"/>" alt="Smiley face" height="194" width="124" /></td></tr><br><br>
<tr></tr>
<tr>

<td>Description :</td><td> <span>${info.description}</span></td></tr><tr></tr>
<tr>
<td>Contact :</td><td> <span>${info.contact}</span></td></tr>
<tr>
<td>Email</td><td> <span>${info.email}</span></td></tr>
<tr></tr>
<tr>
<td>Outlet :</td><td> <span>${info.outlet}</span></td></tr>
</table>
 </center>

<jsp:include page="footer.jsp"></jsp:include>