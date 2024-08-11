<%-- 
    Document   : admin_register
    Created on : 27 Jul, 2024, 12:09:43 PM
    Author     : Tejas S. Sutar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Register</title>
    <link rel="stylesheet" href="admin_register.css">    
</head>
<body>
    <div class="main">
        <form action="admin_register" method="POST">
        <div class="title">
            <h1>Welcome to Task Manager!</h1>
        </div>
        <div class="box">
            <h2 class="register">Register</h2>
            <div class="box1">
                <div class="box1_1">
                    <label for="">Name</label>
                    <input type="text" name="aname" placeholder="Enter name" required="">
                    <label for="">Contact</label>
                    <input type="text" name="acontact" placeholder="Enter mobile no."  pattern="[6-9]{1}[0-9]{9}" required="" onkeypress="javascript: return isContactno(event)">
                    <label for="">Email</label>
                    <input type="email" name="aemail" placeholder="Enter email" required="">
                </div>
                <div class="box1_2">
                    <label for="">Password</label>
                    <input type="password" name="apass" pattern="\d{6}" placeholder="Enter password" required="">
                    <label for="">Confirm Password</label>
                    <input type="password" name="acon_pass" pattern="\d{6}" placeholder="Re-enter password" required="">
                    <label for="">Address</label>
                    <textarea name="a_address" id="" placeholder="Enter Address" required="" ></textarea>
                </div>
            </div>
            <input type="submit" name="btn" value="Register"> 
        </div>
        </form>
    </div>
    <script type="text/javascript" src="validation.js"></script>
</body>
</html>
