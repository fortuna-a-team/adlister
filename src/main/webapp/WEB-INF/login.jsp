<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In"/>
    </jsp:include>
</head>
<body>

<header>
<%-- ---- LINK TO NAVBAR ---- --%>
<%@ include file="/WEB-INF/partials/navbar.jsp" %>
</header>

<%-- ---- LOGIN FORM ---- --%>
<article class="login-all">


    <section class="login-card">

        <section class="hello-world-section">
            <h1>Account Login</h1>
            <p>
                I'm baby forage gentrify selvage, 90's crucifix bushwick man bun. Kale chips readymade lomo, food truck
                blue
                bottle aesthetic everyday carry.
                Tote bag gochujang photo booth asymmetrical tofu raclette, live-edge offal farm-to-table iceland.
            </p>

            <%-- ---- SOCIAL BUTTONS ---- --%>
            <div id="register-btns">
                <input type="submit" value="Register" id="register-btn">
            </div>

        </section>

        <section class="login-section">

            <%-- ---- FORM ---- --%>
            <form action="/login" method="post" class="login-form">

                <%-- ---- USERNAME ---- --%>
                <div class="username">
                    <label for="username"></label>
                    <input type="text" id="username" name="username" placeholder="Enter your username">
                </div>

                <%-- ---- PASSWORD ---- --%>
                <div class="password">
                    <label for="pass"></label>
                    <input type="password" id="pass" name="password"
                           required placeholder="Password">
                </div>

                <%-- ---- SUBMIT BUTTON ---- --%>
                <input type="submit" value="Sign in" id="submit-btn">
            </form>

        </section>
    </section>
</article>
</body>
</html>
