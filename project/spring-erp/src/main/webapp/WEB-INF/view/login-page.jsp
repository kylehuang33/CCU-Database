<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <meta charset="utf-8">
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" type="text/css">
    </head>
    
    <body>
        <!-- Login Form -->
        <form:form class="box" action="${pageContext.request.contextPath}/authenticateTheUser" method="POST" >
            <h1>Login</h1>

			<div>
				<c:if test="${param.error != null }">
	
					<div class="red">
						Invalid username and password.
					</div>
	
				</c:if>
	
				<c:if test="${param.logout != null }">
	
					<div class="green">
						You have been logged out.
					</div>
	
				</c:if>
			</div>
	
			<input type="text" name="username" placeholder="username">
	            <input type="password" name="password" placeholder="password">
	            <!-- <button type="submit">Login</button> -->
	            <input type="submit" value="Login" />
	            
	            <%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
        </form:form>

    </body>
</html>