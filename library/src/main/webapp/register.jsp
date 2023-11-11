<%--
  Created by IntelliJ IDEA.
  User: corma
  Date: 11.11.2023
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignUp</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital@1&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/signup.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/products.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/add_product.css">
</head>

<body>
<nav class="header_wrapper">
    <div class="header_left">
    </div>
    <div class="header_right">
    </div>
</nav>

<div class="signupFrm">
    <form action="<%=request.getContextPath()%>/register" method="post" class="form">
        <h1 class="title">Sign up</h1>

        <%--@declare id=""--%>
        <div class="inputContainer">
            <input type="email" class="input" placeholder="a" name="firstName" id="firstName" required>
            <label for="" class="label">Email</label>
        </div>

        <div class="inputContainer">
            <input type="text" class="input" placeholder="a" name="lastName" id="lastName" required>
            <label for=""  class="label">Username</label>
        </div>

        <div class="inputContainer">
            <input type="password" class="input" placeholder="a" name="email" id="email" required>
            <label for="" class="label">Password</label>
        </div>

        <div class="inputContainer">
            <input type="password" class="input" placeholder="a" name="password" id="password" required>
            <label for="" class="label">Confirm Password</label>
        </div>
        <input type="submit" class="submitBtn" name="submit" value="Sign up">
    </form>
</div>
</body>
</html>