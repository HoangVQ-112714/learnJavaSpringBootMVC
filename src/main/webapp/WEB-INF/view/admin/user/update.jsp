<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Update User ${userDetail.id}</title>

    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head>
<body>
<div class="form-data">
    <form:form method="post" action="/admin/user/update/${userDetail.id}" modelAttribute="newUser">
        <form:input type="text" path="id" disable="true" style="display:none"/>
        <div class="mb-3">
            <label for="emailData" class="form-label">Email</label>
            <form:input type="email" class="form-control" id="emailData" aria-describedby="emailHelp" path="email"
                        disabled="true"/>
            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
        </div>
        <div class="mb-3">
            <label for="nameData" class="form-label">Full Name</label>
            <form:input type="text" class="form-control" id="nameData" path="fullName"/>
        </div>
        <div class="mb-3">
            <label for="addressData" class="form-label">Address</label>
            <form:input type="text" class="form-control" id="addressData" path="address"/>
        </div>
        <div class="mb-3">
            <label for="phoneData" class="form-label">Phone</label>
            <form:input type="text" class="form-control" id="phoneData" path="phone"/>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form:form>
</div>
</body>
</html>