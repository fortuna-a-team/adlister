<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad"/>
    </jsp:include>
</head>
<body>

<header>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
</header>

<article id="create-ad">
    <section id="create-form">
        <h1>Create a new Ad</h1>

        <%---------CREATE AD FORM--------%>
        <form action="/ads/create" method="post">

            <%---------AD TITLE--------%>
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>

            <%---------AD TITLE--------%>
            <div class="form-group">
                <label for="img_path">Image</label>
                <input id="img_path" name="img_path" class="form-control" type="text">
            </div>

            <%---------AD PRICE--------%>
            <div class="form-group">
                <label for="price">Price</label>
                <input id="price" name="price" class="form-control" type="text">
            </div>

            <%---------AD CATEGORY--------%>
            <div class="form-group">
                <label for="category">Category</label>
                <input id="category" name="category" class="form-control" type="text">
            </div>

            <%---------AD LOCATION--------%>
            <div class="form-group">
                <label for="location">Location</label>
                <input id="location" name="location" class="form-control" type="text">
            </div>

            <%---------AD CONDITION--------%>
            <div class="form-group">
                <label for="item_condition">Select item condition</label>
                <select name="item_condition" id="item_condition" class="form-control">
                    <option value="used" selected="selected">Used</option>
                    <option value="new">New</option>
                </select>
            </div>

            <%---------AD DESCRIPTION--------%>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>

            <%---------AD SUBMIT BUTTON--------%>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </section>
</article>

</body>
</html>
