<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%----- BEGIN NAVBAR -----%>
<nav class="navbar">

    <%----- NAVBAR ITEM LIST -----%>
    <ul>
        <%----- HOME NAV LINK -----%>
        <li id="navbar-logo"><a href="${pageContext.request.contextPath}/">AdLister</a></li>

        <%----- ADS NAV LINK -----%>
        <li><a href="${pageContext.request.contextPath}/">Ad Listings</a></li>

        <%----- LOGIN / LOGOUT CONDITIONAL -----%>
        <c:choose>
            <c:when test="${user == null}">
                <li><a href="${pageContext.request.contextPath}/login">Login</a></li>
            </c:when>
            <c:otherwise>
                <li><a href="${pageContext.request.contextPath}/profile" id="profile-link">Profile</a></li>
                <li><a href="${pageContext.request.contextPath}/logout" id="logout-link">Logout</a></li>
            </c:otherwise>
        </c:choose>

    </ul>
</nav>

<%----- SEARCH BAR -----%>
<nav class="search-navbar">
    <input type="text" value="" placeholder="Search Ads..." name="search" id="search" class="search-field">
</nav>
