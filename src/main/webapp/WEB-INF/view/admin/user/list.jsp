<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

    <div class="container mt-3">
        <h2>Striped Rows</h2>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>ID</th>
                <th>Email</th>
                <th>Name</th>
                <th>Phone</th>
                <th>Address</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="user" items="${allUser}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.email}</td>
                    <td>${user.fullName}</td>
                    <td>${user.phone}</td>
                    <td>${user.address}</td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
    </div>
</div>
</body>
</html>