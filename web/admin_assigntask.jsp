<%-- 
    Document   : admin_assigntask
    Created on : 21 Oct, 2024, 9:40:04 PM
    Author     : Tejas S. Sutar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Assign Task</title>
        <%@include file="admin_header.jsp"%>
        <link rel="stylesheet" href="admin_assigntask.css">
    </head>
    <body>
        <form id="form" action="admin_assigntask" method="POST">
        <div class="title">
            <h1>Assign Task</h1>
        </div>
        <div class="main">
            <label>Task name</label>
            <%
                    Connection cn=null;
                    Statement st=null;
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/task_manager","root","");
                        st=cn.createStatement();
                        String sql="select * from admin_addtask";
                        ResultSet rs=st.executeQuery(sql);
                        while(rs.next())
                        {
                %>
            <select name="tname">
            <form action="admin_addtask" methode="POST">
                <option value="<%=rs.getString("task_name")%>"></option>
            </form>
            </select>
                <%
                        }
                    }
                    catch(Exception ex)
                    {
                        out.println(ex.toString());
                    }
                %>
            <label>Add employee name</label>
            <select name="ename">
                <option value="select">select</option>
                <option value="A">A</option>
                <option value="B">B</option>
                <option value="C">C</option>
            </select>
            <label>Deadline</label>
            <input type="date">
            <input type="submit" value="Submit">
        </div>
    </form>
    </body>
</html>
