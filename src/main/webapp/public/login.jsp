<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
	<head>
		<meta charset="UTF-8" />    
		<meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
		<title>OAuth with Google API try</title>
		<link rel="stylesheet" href="public/resources/lib/zurb_foundation/css/normalize.css" />
		<link rel="stylesheet" href="public/resources/lib/zurb_foundation/css/foundation.css" />
		<script src="public/resources/lib/zurb_foundation/js/vendor/modernizr.js"></script>
	</head>
	<body>
		<s:url var="loginProcessingUrl" value="/login" />
		<div class="row">
			<div class="small-12 small-centered large-10 large-centered columns">
				<h2>Login</h2>
			</div>
		</div>
		<div class="row">
			<div class="small-12 small-centered large-10 large-centered columns">
				<sf:form action="${loginProcessingUrl}" method="POST">
				   <fieldset>
				       <legend>Please Login</legend>
				       <c:if test="${param.error != null}">
				           <div>
				               Failed to login.
				               <c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
				                 Reason: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
				               </c:if>
				           </div>
				       </c:if>
				       <c:if test="${param.logout != null}">
				           <div>
				               You have been logged out.
				           </div>
				       </c:if>
				       <div class="row">
							<div class="small-12 small-centered large-6 large-centered columns">
								<label for="username">Username</label>
								<input type="text" id="username" name="username"/>
							</div>
				       </div>
				       <div class="row">
							<div class="small-12 small-centered large-6 large-centered columns">
								<label for="password">Password</label>
								<input type="password" id="password" name="password"/>
							</div>
				       </div>
				       <div class="row">
							<div class="small-12 small-centered large-6 large-centered columns">
								<button type="submit" class="btn right">Log in</button>
							</div>
				       </div>
				   </fieldset>
				</sf:form>
			</div>
		</div>
		
		<script src="public/resources/lib/zurb_foundation/js/vendor/jquery.js"></script>     
		<script src="public/resources/lib/zurb_foundation/js/foundation.min.js"></script>     
		<script>
		   $(document).foundation();
		 </script>
	</body>
</html>