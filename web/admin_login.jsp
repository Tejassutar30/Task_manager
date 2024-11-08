<%-- 
    Document   : admin_login
    Created on : 27 Jul, 2024, 12:01:57 PM
    Author     : Tejas S. Sutar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link rel="stylesheet" href="admin_login.css">
    <script type="text/javascript" src="validation.js"></script>
</head>
<body>
    <div class="main">
        <form action="admin_login" method="POST">
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
            <input type="submit" name="btn" href="admin_home.jsp" value="Login">
            
            <p>Don't have an account? <a href="admin_register.jsp">Register here</a></p>
        </div>
        </form>
    </div>
</body>
</html>


<!--<!DOCTYPE html>

To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>TODO write content</div>
    </body>
</html>-->
