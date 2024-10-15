<%-- 
    Document   : admin_addtask_list
    Created on : 12 Oct, 2024, 12:30:15 PM
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
        <title>Admin Add task list</title>
        <%@include file="admin_header.jsp" %>
    </head>
    <body>
       <div class="container">
            <br>
            <h2>Task List</h2>
            <br>
            <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Sr no.</th>
                    <th scope="col">Task Name</th>
                    <th scope="col">Project Name</th>
                    <th scope="col">Priority</th>
                    <th scope="col">Description</th>
                    <th scope="col">Owner Name</th>
                    <th scope="col">Update</th>
                    <th scope="col">Delete</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int i=1;
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
                <tr>
                <form action="admin_addtask" method="POST">
                    <input type="hidden" name="task_id" value="<%=rs.getString("task_id")%>">
                    <th scope="row"><%=i++%></th>
                    <td><input type="text" name="tname" value="<%=rs.getString("task_name")%>" class="form-control"></td>
                    <td><input type="text" name="pname" value="<%=rs.getString("project_name")%>" class="form-control"></td>
                    <td><input type="text" name="prio" value="<%=rs.getString("priority")%>" class="form-control"></td>
                    <td><input type="text" name="desc" value="<%=rs.getString("description")%>" class="form-control"></td>
                    <td><input type="text" name="oname" value="<%=rs.getString("owner_name")%>" class="form-control"></td>
                    <td><input type="submit" name="btn" value="Update" class="btn btn-success"></td>
                    <td><input type="submit" name="btn" value="Delete" class="btn btn-danger"></td>
                </form>
                </tr>  
                <%
                        }
                    }
                    catch(Exception ex)
                    {
                        out.println(ex.toString());
                    }
                %>
            </tbody>
            </table>
        </div>
    </body>
</html>
