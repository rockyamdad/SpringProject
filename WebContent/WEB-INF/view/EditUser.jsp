<%@ include file="header.jsp" %>
    <center><br>
    <h3>Update User Information</h3>
    
<form:form id="valid-form" method="post" action="edit.html" commandName="edituser">
    <form:hidden path="id"/> 
<div class="fieldgroup">
	<form:label path="name">Full Name <span class="required">*</span></form:label>
	<form:input  path="name"/>
</div>
<div class="fieldgroup">
	<form:label path="dob">Date of Birth</form:label>
	<form:input  path="dob"/>
</div>
<div class="fieldgroup">
	<form:label path="phone">Contact Number <span class="required">*</span></form:label>
	<form:input  path="phone"/>
</div>
<div class="fieldgroup">
	<form:label path="gender">Gender</form:label>
	<form:radiobutton path="gender" value="male"/>Male
	<form:radiobutton path="gender" value="female"/>FeMale

</div>
<div class="fieldgroup">
	<form:label path="email">Email Address <span class="required">*</span></form:label>
	<form:input  path="email"/>
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

