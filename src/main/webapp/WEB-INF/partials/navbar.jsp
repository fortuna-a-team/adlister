<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%----- BEGIN NAVBAR -----%>
<nav class="navbar">

    <%----- HOME NAV LINK -----%>
    <li id="navbar-logo">
        <a href="${pageContext.request.contextPath}/">AdLister</a>
    </li>

    <%----- NAVBAR ITEM LIST -----%>
    <ul>

        <%----- ADS NAV LINK -----%>
        <li><a href="${pageContext.request.contextPath}/ads">Ad Listings</a></li>

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
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" id="filter-icon">
        <path d="M6 18h-2v5h-2v-5h-2v-3h6v3zm-2-17h-2v12h2v-12zm11 7h-6v3h2v12h2v-12h2v-3zm-2-7h-2v5h2v-5zm11 14h-6v3h2v5h2v-5h2v-3zm-2-14h-2v12h2v-12z"/>
    </svg>
</nav>
