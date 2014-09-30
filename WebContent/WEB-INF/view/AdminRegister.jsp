<%@ include file="header.jsp" %>
    <center>
    <br><br>
<h3>Registration Admin</h3>
<br><br>
<c:url var="adminRegistration" value="saveAdmin.html"/>
<form:form id="valid-form" modelAttribute="admin" method="post" action="${adminRegistration}">

<div class="fieldgroup">
	<form:label path="name">Full Name <span class="required">*</span></form:label>
	<input type="text" name="name"/>
</div>
<div class="fieldgroup">
	<form:label path="dob">Date of Birth</form:label>
	<form:input id="datepicker2" path="dob"/>
</div>
<div class="fieldgroup">
	<form:label path="phone">Contact Number <span class="required">*</span></form:label>
	<form:input  path="phone"/>
</div>
<div class="fieldgroup">
	<form:label path="gender">Gender</form:label>
	<form:radiobutton path="gender" value="M"/>Male
	<form:radiobutton path="gender" value="F"/>FeMale

</div>
<div class="fieldgroup">
	<form:label path="email">Email Address <span class="required">*</span></form:label>
	<form:input  path="email"/>
</div>
<div class="fieldgroup">
	<form:label path="password">Password <span class="required">*</span></form:label>
	<form:password  path="password"/>
</div>
<div class="fieldgroup">
	<form:label path="">confirm Password</form:label>
	<form:input  path=""/>
</div>
<div class="fieldgroup">
  <input type="submit" value="Register" class="submit"/>
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
		                    phone: "required"
		                },
		                messages: {
		                    name: "Please enter your Name",
		                    password: {
		                        required: "Please provide a password",
		                        minlength: "Your password must be at least 5 characters long"
		                    },
		                    email: "Please enter a valid email address",
		                    phone: "Please provide a phone number"
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

