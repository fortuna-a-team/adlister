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
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque dicta doloribus eius et fugiat laboriosam neque nihil obcaecati odit officia placeat, porro praesentium reiciendis similique sint tempore voluptate voluptatibus voluptatum!</p>
        </div>

        <div id="card-container">
        <c:forEach var="ad" items="${ads}">
            <a href="/ads/ad?id=${ad.id}">
                <div class="card">
                    <img src="${ad.img_path}" alt="" class="card-img">
                    <div class="card-body">
                        <h2 class="card-title">${ad.title} | ${ad.location}</h2>
                        <p>$${ad.price}</p>
                    </div>
                </div>
            </a>
        </c:forEach>
        </div>
    </section>
</article>

</body>
</html>