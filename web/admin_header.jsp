<%-- 
    Document   : admin_header
    Created on : 27 Jul, 2024, 12:00:14 PM
    Author     : Tejas S. Sutar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Header</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style>
            .A{
                background-color: #a9f7e1;
                box-shadow: 0px 10px 5px lightblue;
                height: 10%;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg A">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Task Manager</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="admin_home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_register_list.jsp">Employee List</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link active" href="admin_addtask_list.jsp" role="button" data-bs-toggle="dropdown" aria-expanded="true">Task List</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="admin_addtask.jsp">Add Task</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="admin_addinstruction.jsp">Add Instruction</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="admin_addinstruction_list.jsp">Instruction List</a>
        </li>
<!--        <li class="nav-item">
          <a class="nav-link active" href="admin_assigntask.jsp">Assign Task</a>
        </li>-->
      </ul>
      <form class="d-flex" role="search">
          <button class="btn btn-outline-danger" type="submit" style="background-color: crimson; margin-right: 5px;"><a href="admin_login.jsp" style="text-decoration: none; color: black;">Logout</a></button>
          <button class="btn btn-outline-danger" type="submit" style="background-color: crimson;"><a href="index.html" style="text-decoration: none; color: black;">Signout</a></button>
      </form>
    </div>
  </div>
</nav>
    </body>
</html>
