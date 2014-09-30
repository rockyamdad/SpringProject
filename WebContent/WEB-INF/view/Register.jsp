<%@ include file="header.jsp" %>
<body>
<br><br>
<center>
<h3>Registration Form</h3>
<br>
<c:url var="clientRegistration" value="saveClient.html"/>
<form:form id="valid-form" modelAttribute="client" method="post" action="${clientRegistration}">


<div class="fieldgroup">
	<form:label path="name">Full Name</form:label><span class="required">*</span>
	<input type="text" name="name"/>
</div>
<div class="fieldgroup">
	<form:label path="dob">Date of Birth</form:label>
	<form:input id="datepicker" path="dob"/>
</div>
<div class="fieldgroup">
	<form:label path="phone">Contact Number</form:label><span class="required">*</span>
	<form:input  path="phone"/>
</div>
<div class="fieldgroup">
	<form:label path="gender">Gender</form:label>
	<form:radiobutton path="gender" value="M"/>Male
	<form:radiobutton path="gender" value="F"/>FeMale

</div>
<div class="fieldgroup">
	<form:label path="email">Email Address</form:label><span class="required">*</span>
	<form:input  path="email"/>
</div>
<div class="fieldgroup">
	<form:label path="password">Password</form:label><span class="required">*</span>
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

