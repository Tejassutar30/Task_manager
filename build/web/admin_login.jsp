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
        <form>
        <div class="title">
            <h1>Welcome Back!</h1>
        </div>
        <div class="box">
            <div class="login">
                <h2>Login</h2>
            </div>
            <label for="" class="lbl">Username</label>
            <input type="email" placeholder="Enter email" required="">
            <label for="" class="lbl">Password</label>
            <input type="password" placeholder="Enter password" required="" pattern="\d{6}">
            <div class="check">
                <input type="checkbox" id="check">
                <label for="check">Remember me</label>
            </div>
            <input type="submit" value="Login">
            
            <p>Don't have an account? <a href="">Register here</a></p>
        </div>
        </form>
    </div>
</body>
</html>
