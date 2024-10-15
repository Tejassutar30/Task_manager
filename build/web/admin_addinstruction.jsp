<%-- 
    Document   : admin_addinstruction
    Created on : 13 Oct, 2024, 8:03:31 PM
    Author     : Tejas S. Sutar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Add Instruction</title>
        <%@include file="admin_header.jsp"%>
        <link rel="stylesheet" href="admin_addinstruction.css">
    </head>
    <body>
        <form action="admin_addinstruction" id="form" method="POST">
	<div class="title">
		<h2>Add Instructions</h2>
	</div>
	<div class="main">
		<input type="hidden" name="inst_id" value="inst_id">
		<label>Instruction name</label>
		<input type="text" name="iname" placeholder="Enter instruction name">
		<label>Description</label>
                <textarea name="desc" placeholder="Enter description"></textarea>
                <input type="submit" name="btn" value="Add">
	</div>
        </form>
    </body>
</html>
