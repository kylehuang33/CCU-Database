<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <meta charset="utf-8">
        <link href="<c:url value="/resources/myCss.css" />" rel="stylesheet">
    </head>
    <body>
        <!-- Login Form -->
        <form:form class="box" action="${pageContext.request.contextPath}/authenticateTheUser" method="POST" >
            <h1>Login</h1>

                    <div>
                        <c:if test="${param.error != null }">
        
                            <div class="alert alert-danger col-xs-offset-1 col-xs-10">
                                Invalid username and password.
                            </div>
                        </c:if>
                    </div>

            <input type="text" name="" placeholder="username">
            <input type="password" name="" placeholder="password">
            <input type="submit" value="Login">
        </form:form>

    </body>
</html>