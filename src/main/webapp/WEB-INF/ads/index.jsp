<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body>
<header>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
</header>

<%----- MAIN ARTICLE -----%>
<article>
    <%----- SECTION -----%>
    <section class="content-body">
        <h1>Here Are all the ads!</h1>

        <%----- CARDS -----%>
        <c:forEach var="ad" items="${ads}">
            <div class="card">

                    <%----- CARD TITLE-----%>
                <h2 class="card-title">${ad.title}</h2>

                    <%----- CARD IMAGE-----%>
                <img src="${ad.img_path}" alt="ad-image" class="card-img">

                    <%----- CARD BODY -----%>
                <div class="card-body">
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
            </div>
        </c:forEach>
        <%-----CARD END-----%>
    </section>
</article>

</body>
</html>
