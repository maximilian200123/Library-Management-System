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
    <link rel="stylesheet" href="CSS/signup.css">
    <link rel="stylesheet" href="CSS/style.css">

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
        <h1 class="title">Inregistrare</h1>

        <%--@declare id=""--%>
        <div class="inputContainer">
            <input type="text" class="input" placeholder="Prenume" name="firstName" id="firstName" required><br>
            <label for="firstName" class="label">Prenume</label>
        </div>

        <div class="inputContainer">
            <input type="text" class="input" placeholder="Nume" name="lastName" id="lastName" required><br>
            <label for="lastName"  class="label">Nume</label>
        </div>

        <div class="inputContainer">
            <input type="email" class="input" placeholder="Email" name="email" id="email" required><br>
            <label for="email" class="label">Email</label>
        </div>

        <div class="inputContainer">
            <input type="password" class="input" placeholder="Parola" name="password" id="password" required><br>
            <label for="password" class="label">Parola</label>
        </div>
        <input type="submit" class="submitBtn" name="submit" value="Inregistrare">
    </form>
</div>
</body>
</html>