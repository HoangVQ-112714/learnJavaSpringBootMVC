<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head>
<body>
<div class="form-data">
    <form method="post">
        <div class="mb-3">
            <label for="emailData" class="form-label">Email</label>
            <input type="email" class="form-control" id="emailData" aria-describedby="emailHelp">
            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
        </div>
        <div class="mb-3">
            <label for="passwordData" class="form-label">Password</label>
            <input type="password" class="form-control" id="passwordData">
        </div>
        <div class="mb-3">
            <label for="nameData" class="form-label">Full Name</label>
            <input type="text" class="form-control" id="nameData">
        </div>
        <div class="mb-3">
            <label for="addressData" class="form-label">Address</label>
            <input type="text" class="form-control" id="addressData">
        </div>
        <div class="mb-3">
            <label for="phoneData" class="form-label">Phone</label>
            <input type="text" class="form-control" id="phoneData">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>