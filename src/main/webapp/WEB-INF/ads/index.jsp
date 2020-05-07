<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <img src="${ad.img_path}" alt="ad-image">
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
    </c:forEach>
</div>

</body>
</html>
