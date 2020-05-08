<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!"/>
    </jsp:include>
</head>
<body>

<header>
    <jsp:include page="partials/navbar.jsp"/>
</header>

<%----- MAIN ARTICLE -----%>
<article>

    <%----- SECTION BEGIN -----%>
    <section class="content-body">

        <%----- REGISTER FORM -----%>
        <div class="container">
            <h1>Please fill in your information.</h1>
            <form action="/register" method="post">

                <%----- USERNAME -----%>
                <div class="form-group">
                    <label for="username">Username<sup>*</sup></label>
                    <input id="username" name="username" class="form-control" type="text">
                </div>

                <%----- FIRST NAME -----%>
                <div class="form-group">
                    <label for="firstName">First name<sup>*</sup></label>
                    <input id="firstName" name="first_name" class="form-control" type="text">
                </div>

                <%----- LAST NAME-----%>
                <div class="form-group">
                    <label for="lastName">Last name<sup>*</sup></label>
                    <input id="lastName" name="last_name" class="form-control" type="text">
                </div>

                <%----- EMAIL -----%>
                <div class="form-group">
                    <label for="email">Email<sup>*</sup></label>
                    <input id="email" name="email" class="form-control" type="text">
                </div>

                <%----- PHONE NUMBER -----%>
                <div class="form-group">
                    <label for="phoneNumber">Phone number*</label>
                    <input id="phoneNumber" name="phone_number" class="form-control" type="tel">
                </div>

                <%----- PASSWORD -----%>
                <div class="form-group">
                    <label for="password">Password<sup>*</sup></label>
                    <input id="password" name="password" class="form-control" type="password">
                </div>

                <%----- CONFIRM PASSWORD -----%>
                <div class="form-group">
                    <label for="confirm_password">Confirm Password<sup>*</sup></label>
                    <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                </div>

                * = required field
                <br/>
                <br/>
                <input type="submit" id="register-btn" value="Register">
            </form>
        </div>
    </section>
</article>
</body>
</html>
