<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!"/>
    </jsp:include>
</head>
<body>
<header>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
</header>

<article>
    <section class="content-body">
        <div class="content-header">
            <h1>Welcome to the Adlister!</h1>
        </div>

        <h1>Here are all the ads!</h1>
        <c:forEach var="ad" items="${ads}">
            <div class="card">
                <img src="${ad.img_path}" alt="" class="card-img">
                <div class="card-body">
                    <div class="card-body">
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
                    <a href="/ads/ad?id=${ad.id}">
                        <input class="favorite styled" type="button" value="More Details">
                    </a>
                </div>
            </div>
        </c:forEach>
    </section>
</article>

</body>
</html>