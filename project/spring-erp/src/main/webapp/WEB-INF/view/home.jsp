<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<html>

<head>
	<title>Company Home Page</title>
</head>

<body>
	<h2>Company Home Page</h2>
	<hr>
	<p>
	Welcome to the our company home page!
	</p>
	
	<hr>
	
	<!-- display user name and role -->
	<p>
		User: <security:authentication property="principal.username" />
		<br><br>
		Role(s): <security:authentication property="principal.authorities" />		
	</p>
	
	
	<security:authorize access="hasRole('MANAGER')"> 	<!-- hasAnyRole(list) -->
	
		<!-- add link to point to /leaders ... this is for managers -->
		<p>
			<a href="${ pageContext.request.contextPath }/leaders">LeaderShip Meeting</a>
			(Only for Manager peeps)	
		</p>
		
	</security:authorize>
	
	<security:authorize access="hasRole('ADMIN')">
	
		<!-- add link to point to /systems ... this is for admins -->
		<p>
			<a href="${ pageContext.request.contextPath }/systems">IT Systems Meeting</a>
			(Only for Admin peeps)	
		</p>
		
	</security:authorize>
	<hr>
	
	<!-- Add logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	
		<input type="submit" value="Logout">
	</form:form>
	
	
</body>

</html>