<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">

        <li><a href="/ads/create">Create</a></li>
        <li><a href="/register">Register</a></li>

        <c:choose>
            <c:when test="${user == null}">
                <li><a href="/login">Login</a></li>
            </c:when>
            <c:otherwise>
                <li><a href="/logout" id="logout-link">Logout</a></li>
            </c:otherwise>
        </c:choose>
        </ul>


    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
