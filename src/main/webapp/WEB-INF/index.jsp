<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Welcome to the Adlister!</h1>
    </div>

    <div class="container">
        <h1>Here are all the ads!</h1>

        <c:forEach var="ad" items="${ads}">
        <a href="/ads/ad?id=${ad.id}">
            <div class="col-md-6">
                <h2>${ad.title}</h2>
                <h4>Location</h4>
                <p>${ad.location}</p>
                <h4>Price</h4>
                <p>${ad.price}</p>
                <h4>Condition</h4>
                <p>${ad.item_condition}</p>
                <h4>Category</h4>
                <p>${ad.category}</p>
                <h4>Description</h4>
                <p>${ad.description}</p>
            </div>
        </a>
        </c:forEach>
    </div>


</body>
</html>