<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing ad"/>
    </jsp:include>
</head>
<body>

<%----- NAVBAR -----%>
<header>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
</header>

<%----- MAIN ARTICLE -----%>
<article>
    <%----- SECTION -----%>
    <section class="content-body">

        <%----- CARDS -----%>
        <div class="full-card">
            <div class="left-ad-container">
                <img src="${ad.img_path}" alt="ad-image" class="full-card-img">
            </div>
            <div class="full-card-body">
                <h2 class="full-card-title">${ad.title}</h2>
                <h4>Location</h4>
                <p>${ad.location}</p>
                <h4>Price</h4>
                <p>$${ad.price}</p>
                <h4>Condition</h4>
                <p>${ad.item_condition}</p>
                <h4>Category</h4>
                <p>${ad.category}</p>
                <h4>Description</h4>
                <p>${ad.description}</p>
            </div>
        </div>
        <%----- CARDS END -----%>

    </section>
</article>

</body>
</html>
