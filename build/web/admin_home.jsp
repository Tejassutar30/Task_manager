<%-- 
    Document   : admin_home
    Created on : 21 Oct, 2024, 1:52:01 PM
    Author     : Tejas S. Sutar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <%@include file="admin_header.jsp"%>
        <style>
            body{
                background-image: url(https://png.pngtree.com/thumb_back/fh260/background/20220427/pngtree-tiny-business-people-and-manager-at-tasks-and-goals-accomplishment-chart-image_1091427.jpg);
                background-repeat: no-repeat;
                background-size: cover;
            }
            .container{
                margin-top: 150px;
            }
            .txt{
                width: 550px;
                color: white;
            }
            h1{
                color: white;
                margin-bottom: 50px;
            }
            .box{
                width: 100%;
                height: 100px;
                background-color: purple;
                margin-top: 204px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Welcome to Task Manager</h1>
            <div class="txt"><p>Our Task Manager website is designed to optimize task allocation and tracking for teams and organizations.
                   It allows admins to create and assign tasks to users and monitor the status of each task,
                   ensuring transparency and productivity.</p></div>
        </div>
        <div class="box"></div>
    </body>
</html>
