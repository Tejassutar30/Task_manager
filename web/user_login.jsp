<%-- 
    Document   : user_login
    Created on : 12 Aug, 2024, 7:48:24 PM
    Author     : Tejas S. Sutar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
        <link rel="stylesheet" href="user_login.css">
    </head>
    <body>
        <form action="user_login" method="POST">
        <div class="main">
        <div class="title">
            <h1>Welcome Back!</h1>
        </div>
        <div class="box">
            <div class="login">
                <h2>Login</h2>
            </div>
            <label for="" class="lbl">Username</label>
            <input type="email" name="email" placeholder="Enter email" required="">
            <label for="" class="lbl">Password</label>
            <input type="password" name="password" placeholder="Enter password" required="" pattern="\d{6}">
            <div class="check">
                <input type="checkbox" id="check">
                <label for="check">Remember me</label>
            </div>
            <input type="submit" href="user_home.jsp" name="btn" value="Login">
            <p>Don't have an account? <a href="user_register.jsp">Register here</a></p>
        </div>
        </div>
        </form>
    </body>
</html>
