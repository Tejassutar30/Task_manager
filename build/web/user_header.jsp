<%-- 
    Document   : user_header
    Created on : 21 Oct, 2024, 1:56:31 PM
    Author     : Tejas S. Sutar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Header</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style>
            .B{
                background-color: #a5a7ee;
                box-shadow: 0px 10px 5px #6876a5;
                height: 10%;
            }
        </style>
    </head>
    <body>
    <nav class="navbar navbar-expand-lg B">
    <div class="container-fluid">
    <a class="navbar-brand" href="#">Task Manager</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_instruction_list.jsp">Instructions</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link active" href="user_task_list.jsp" role="button" data-bs-toggle="dropdown" aria-expanded="true">Task List</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
          <button class="btn btn-outline-danger" type="submit" style="background-color: crimson; margin-right: 5px;"><a href="user_login.jsp" style="text-decoration: none; color: black;">Logout</a></button>
          <button class="btn btn-outline-danger" type="submit" style="background-color: crimson;"><a href="index.html" style="text-decoration: none; color: black;">Signout</a></button>
      </form>
    </div>
    </div>
    </nav>
    </body>
</html>
