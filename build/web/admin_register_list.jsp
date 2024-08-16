<%-- 
    Document   : admin_register_list
    Created on : 7 Aug, 2024, 5:44:46 PM
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
        <title>JSP Page</title>
        <%@include file="admin_header.jsp" %>
    </head>
    <body>
        <div class="container">
            <h2>Admin List</h2>
            <br>
            <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Sr no.</th>
                    <th scope="col">Admin Name</th>
                    <th scope="col">Address</th>
                    <th scope="col">Contact</th>
                    <th scope="col">Email</th>
                    <th scope="col">Password</th>
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
                        String sql="select * from admin_register";
                        ResultSet rs=st.executeQuery(sql);
                        while(rs.next())
                        {
                %>
                <tr>
                <form action="admin_register" method="POST">
                    <input type="hidden" name="admin_id" value="<%=rs.getString("admin_id")%>">
                    <th scope="row"><%=i++%></th>
                    <td><%=rs.getString("admin_name")%></td>
                    <td><%=rs.getString("address")%></td>
                    <td><%=rs.getString("contact")%></td>
                    <td><%=rs.getString("email_id")%></td>
                    <td><%=rs.getString("password")%></td>
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
