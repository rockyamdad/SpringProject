<%@ include file="header.jsp" %>
<br><br>
<center>
<h3>Update Products</h3>
<br><br>
<form:form id="valid-form" method="post" action="updateProducts.html" commandName="editproduct" enctype="multipart/form-data">
    <form:hidden path="id"/> 
<div class="fieldgroup">
	<form:label path="name">Product Name <span class="required"> *</span></form:label>
	<form:input path="name"/>
</div>
<div class="fieldgroup">
	<form:label path="image">Image<span class="required"> *</span></form:label>
	<form:input path="image" id="image" type="file" />
</div>
<div class="fieldgroup">
	<form:label path="type">Product Type</form:label>
	<form:select path="type" items="${model.ptype}"></form:select>
</div>

<div class="fieldgroup">
	<form:label path="description">Description</form:label>
	<form:textarea path="description" style="height:100px" rows="7" cols="30" />
</div>
<div class="fieldgroup">
	<form:label path="usertype">User Type</form:label>
	<form:select path="usertype" items="${model.utype}"></form:select>
</div>

<div class="fieldgroup">
	<form:label path="price">Price <span class="required"> *</span></form:label>
	<form:input path="price"/>
</div>
<div class="fieldgroup">
	<form:label path="quantity">Quantity <span class="required"> *</span></form:label>
	<form:input path="quantity"/>
</div>
<div class="fieldgroup">
	<input type="submit" value="Upload" class="submit"/>
</div>

</form:form>
</center>
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript">
(function($,W,D)
		{
		    var JQUERY4U = {};
		 
		    JQUERY4U.UTIL =
		    {
		        setupFormValidation: function()
		        {
		            //form validation rules
		            $("#valid-form").validate({
		                rules: {
		                    name: "required",
		                   price: "required",
		                   quantity: "required",
		                    image: "required"
		                },
		                messages: {
		                    name: "Please Enter Product Name",
		                    image: "Please Upload Product Image",
		                    price: "Please Enter Price Of Product",
		                    quantity: "Please Enter Quantity Of Product"
		                },
		                submitHandler: function(form) {
		                    form.submit();
		                }
		            });
		        }
		    }
		 
		    //when the dom has loaded setup form validation rules
		    $(D).ready(function($) {
		        JQUERY4U.UTIL.setupFormValidation();
		    });
		 
		})(jQuery, window, document);
</script>

