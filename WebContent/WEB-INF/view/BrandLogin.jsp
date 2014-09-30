<%@ include file="header.jsp" %>
<br><br>
<center>
<h3>Brand Login</h3><br>

<c:url var="login" value="brandlogin.html"/>
<form:form id="valid-form"  modelAttribute="brand" method="post" action ="${login}">
<div class="fieldgroup">

	<form:label path="email">Email Address</form:label>
	<form:input  path="email"/>
</div>
<div class="fieldgroup">
	<form:label path="password">Password</form:label>
	<form:password  path="password"/>
</div>

<div class="fieldgroup">
  <input type="submit" value="Login" class="submit"/>
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
		                    email: {
		                        required: true,
		                        email: true
		                    },
		                    password: {
		                        required: true,
		                        minlength: 5
		                    },
		                },
		           
		                messages: {
		                  
		                    password: {
		                        required: "Please provide a password",
		                        minlength: "Your password must be at least 5 characters long"
		                    },
		                    email: "Please enter a valid email address"
		                   
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