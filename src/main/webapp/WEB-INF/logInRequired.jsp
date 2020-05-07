<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Sign In Required"/>
    </jsp:include>
</head>
<body>
<%-- ---- LINK TO NAVBAR ---- --%>
<%@ include file="/WEB-INF/partials/navbar.jsp" %>


<section>
    <h1>You need to be signed in to view this ad</h1>
    <a href="/login">Login</a>
    <h3>Don't have an account? Register here!</h3>
    <a href="/register">Register</a>

</section>

</body>
</html>
