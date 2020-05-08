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

        <h1>Enter Your Account Details</h1>

        <%----- REGISTER FORM -----%>
        <div class="register-container">
            <form action="/register" method="post" class="register-form">

                <%----- USERNAME -----%>
                <label for="username">Username<sup>*</sup></label>
                <input id="username" name="username" class="form-control" type="text">

                <%----- FIRST NAME -----%>
                <label for="firstName">First name<sup>*</sup></label>
                <input id="firstName" name="first_name" class="form-control" type="text">


                <%----- LAST NAME-----%>

                <label for="lastName">Last name<sup>*</sup></label>
                <input id="lastName" name="last_name" class="form-control" type="text">


                <%----- EMAIL -----%>

                <label for="email">Email<sup>*</sup></label>
                <input id="email" name="email" class="form-control" type="text">


                <%----- PHONE NUMBER -----%>

                <label for="phoneNumber">Phone number*</label>
                <input id="phoneNumber" name="phone_number" class="form-control" type="tel">


                <%----- PASSWORD -----%>

                <label for="password">Password<sup>*</sup></label>
                <input id="password" name="password" class="form-control" type="password">


                <%----- CONFIRM PASSWORD -----%>

                <label for="confirm_password">Confirm Password<sup>*</sup></label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">


                <p><em>* = required field</em></p>

                <input type="submit" id="register-btn" value="Register">
            </form>
        </div>
    </section>
</article>
</body>
</html>
