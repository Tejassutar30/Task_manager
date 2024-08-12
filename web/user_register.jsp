<%-- 
    Document   : user_register
    Created on : 12 Aug, 2024, 7:41:09 PM
    Author     : Tejas S. Sutar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Register</title>
        <link rel="stylesheet" href="user_register.css">
    </head>
    <body>
        <form>
        <div class="main">
        <div class="title">
            <h1>Welcome to Task Manager!</h1>
        </div>
        <div class="box">
            <h2 class="register">Register</h2>
            <div class="box1">
                <div class="box1_1">
                    <label for="">Name</label>
                    <input type="text" placeholder="Enter name" required="">
                    <label for="">Contact</label>
                    <input type="text" placeholder="Enter mobile no." pattern="[6-9]{1}[0-9]{9}" required="">
                    <label for="">Email</label>
                    <input type="email" placeholder="Enter email" required="">
                    <label for="">Occupation</label>
                    <input type="text" placeholder="Enter occupation" required="">
                </div>
                <div class="box1_2">
                    <label for="">Password</label>
                    <input type="password" placeholder="Enter password" pattern="\d{6}" required="">
                    <label for="">Confirm Password</label>
                    <input type="password" placeholder="Re-enter password" pattern="\d{6}" required="">
                    <label for="">Address</label>
                    <textarea name="" id="" placeholder="Enter Address" required=""></textarea>
                    <input type="submit" value="Register">
                </div>
            </div>
        </div>
    </div>
    </form>
    </body>
</html>
