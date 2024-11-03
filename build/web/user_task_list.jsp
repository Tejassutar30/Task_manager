<%-- 
    Document   : user_task_list
    Created on : 21 Oct, 2024, 2:17:10 PM
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
        <title>User Tasklist</title>
        <%@include file="user_header.jsp" %>
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
                    <th scope="col">Employee Name</th>
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
                    <td><input type="text" name="ename" value="<%=rs.getString("employee_name")%>" class="form-control"></td>
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
