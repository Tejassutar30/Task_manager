<%-- 
    Document   : admin_addtask
    Created on : 27 Jul, 2024, 12:59:17 PM
    Author     : Tejas S. Sutar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Task</title>
        <%@include file="admin_header.jsp" %>
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" href="admin_addtask.css">
        <script type="text/javascript" src="validation.js"></script>
    </head>
    <body>
        <form>
        <div class="main">
        <div class="container">
            <div class="row">
                <p>Add task</p>
            </div>
            <div class="row">
                <div class="col-sm-2">
                    <label for="">Serial no.</label>
                </div>
                <div class="col-sm-5">
                    <label for="">Task Name</label>
                    <input type="text" placeholder="Enter task name" class="form-control" required="">
                </div>
                <div class="col-sm-5">
                    <label for="">Project Name</label>
                    <input type="text" placeholder="Enter project name" class="form-control" required="">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-2">
                    <label for="">Choose Priority</label>
                    <select name="" id="" class="form-control" required="">
                        <option value="">None</option>
                        <option value="">High</option>
                        <option value="">Medium</option>
                        <option value="">Low</option>
                    </select>
                </div>
                <div class="col-sm-5">
                    <label for="">Description</label>
                    <input type="text" placeholder="Enter description" class="form-control" required="">
                </div>
                <div class="col-sm-5">
                    <label for="">Owner Name</label>
                    <input type="text" placeholder="Enter owner name" class="form-control" required="">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-6">
                    <input type="reset" value="Clear" class="form-control" required="">
                </div>
                <div class="col-sm-6">
                    <input type="submit" value="Add" class="form-control" required="">
                </div>
            </div>
        </div>
    </div>
    </form>
    </body>
</html>
