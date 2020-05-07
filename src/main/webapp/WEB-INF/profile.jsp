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
        <img src="../img/charles-deluvio-K4mSJ7kc0As-unsplash.jpg" alt="User image placeholder" id="user-img">
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
        <div class="ad-card">
            <a href="${pageContext.request.contextPath}/ads/create">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                    <path d="M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm6 13h-5v5h-2v-5h-5v-2h5v-5h2v5h5v2z"/>
                </svg>
                <p>Create a New Ad</p>
            </a>
        </div>
    </section>
</article>

</body>
</html>