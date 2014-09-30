<%@ include file="header.jsp" %>
<br><br>
<center>
<h3>Update Profile</h3>
<br><br>
<form:form id="valid-form" method="post" action="brandedit.html" commandName="editbrand" enctype="multipart/form-data">
    <form:hidden path="id"/> 
<div class="fieldgroup">
	<form:label path="name">Brand Name <span class="required"> *</span></form:label>
	<form:input id="kjnk" path="name"/>
</div>
<div class="fieldgroup">
	<form:label path="description">Description</form:label>
	<form:textarea path="description" style="height:100px" rows="7" cols="30" />
</div>
<div class="fieldgroup">
	<form:label path="contact">Contact</form:label>
	<form:input id="kjnk" path="contact"/>
</div>	
<div class="fieldgroup">
	<form:label path="Logo">Logo <span class="required"> *</span></form:label>
	<input type="file" name="logo"/>
</div>
<div class="fieldgroup">
	<form:label path="outlet">Outlet</form:label>
	<form:input  path="outlet"/>
</div>
<div class="fieldgroup">
	<form:label path="email">Email <span class="required"> *</span></form:label>
	<form:input  path="email"/>
</div>
<div class="fieldgroup">
	<form:label path="password">Password <span class="required"> *</span></form:label>
	<form:password  path="password"/>
</div>
<div class="fieldgroup">
	<form:label path="">confirm Password</form:label>
	<form:input  path=""/>
</div>
<div class="fieldgroup">
	<input type="submit" value="Update" class="submit"/>
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
		                    email: {
		                        required: true,
		                        email: true
		                    },
		                    password: {
		                        required: true,
		                        minlength: 5
		                    },
		                    logo: "required"
		                },
		                messages: {
		                    name: "Please enter Brand Name",
		                    password: {
		                        required: "Please Provide a Password",
		                        minlength: "Your Password Must Be at least 5 Characters Long"
		                    },
		                    email: "Please Enter a Valid Email Address",
		                    logo: "Please Provide a Logo of Brand"
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

