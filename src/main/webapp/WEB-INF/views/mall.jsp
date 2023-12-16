<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>쇼핑몰 클론코딩 연습</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin=“anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>
<h1 class="blog-header-logo text-body-emphasis text-decoration-none">쇼핑몰</h1>
<table class="table-info" width="90%">
    <tr>
        <th>Name</th>
        <th>Photo</th>
        <th>Price</th>
    </tr>

    <c:forEach items="${articles}" var="u">
        <tr>
            <td>${u.name}</td>
            <td>
                <c:if test="${u.getPhoto() ne ''}"><br />
                    <img width = '100px' src="https://yournus.com/web/product/medium/202312/e9795dafaacef5502a28f4c10c8d237c.webp" class="photo">
                </c:if></td>
            <td>${u.price}</td>
            <td><a href="editItemForm/${u.sitem}">Edit</a></td>
            <td><a href="deleteItemOK/${u.sitem}" onclick="return confirm('Are you sure you want to delete this post?')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</br><a href="addItem">Add New Post</a>
<form action="logout" method="post">
    <button type="submit">logout</button>
</form>
</body>
</html>