<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<%-- ---- NAVBAR ---- --%>
<header>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
</header>

<article class="content-body">
    <section class="user-profile">

        <%-- ---- PROFILE ---- --%>
        <img src="img/charles-deluvio-K4mSJ7kc0As-unsplash.jpg" alt="User image placeholder" id="user-img">
        <h2 id="profile-header">Welcome back ${sessionScope.user.first_name}!</h2>
        <h4>Bio</h4>
        <p>
            I'm baby vinyl VHS knausgaard, heirloom neutra vice flannel ugh. Viral drinking vinegar salvia, thundercats
            everyday carry scenester meh fashion axe sriracha.
            Keytar tote bag XOXO twee occupy, etsy glossier humblebrag. Tofu portland helvetica venmo flannel deep v
            blog, cred cray gochujang.
        </p>

    </section>

    <%-- ---- USER AD LISTINGS ---- --%>
    <section class="personal-ad-listings">

        <div id="card-container">

            <%-- ---- USER NEW AD ---- --%>
            <a href="${pageContext.request.contextPath}/ads/create">
                <div class="card">
                    <div class="card-img">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <path d="M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm6 13h-5v5h-2v-5h-5v-2h5v-5h2v5h5v2z"/>
                        </svg>
                    </div>
                    <div class="card-title">
                        <h2>Create a New Ad</h2>
                    </div>
                </div>
            </a>

        <%-- ---- USER ADS ---- --%>
            <c:forEach var="ad" items="${userAds}">
                <a href="/profile/ad?id=${ad.id}">
                    <div class="card">
                        <img src="${ad.img_path}" alt="" class="card-img">
                        <div class="card-body">
                            <h2 class="card-title">${ad.title} | ${ad.location}</h2>
                            <p>$${ad.price}</p>
                            <form action="/profile/delete" method="post">
                                <input type="hidden" name="ad_id" value="${ad.id}">
                                <input class="delete-btn" type="submit" value="Delete">
                            </form>
                        </div>
                    </div>
                </a>
            </c:forEach>

        </div>

    </section>
</article>

</body>
</html>