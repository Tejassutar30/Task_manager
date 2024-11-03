<%-- 
    Document   : user_instruction_list
    Created on : 20 Oct, 2024, 8:45:00 PM
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
        <title>Instruction List</title>
        <%@include file="user_header.jsp" %>
    </head>
    <body>
        <div class="container">
            <br>
            <h2>Instructions</h2>
            <br>
            <table class="table table-striped">
            <thead>
                        <th scope="col">Sr no.</th>
                        <th scope="col">Instruction Name</th>
                        <th scope="col">description</th>
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
                        String sql="select * from admin_instruction";
                        ResultSet rs=st.executeQuery(sql);
                        while(rs.next())
                        {
                %>
                <tr>
                <form action="admin_addinstruction" method="POST">
                    <input type="hidden" name="inst_id" value="<%=rs.getString("inst_id")%>">
                    <th scope="row"><%=i++%></th>
                    <td><input type="text" name="iname" value="<%=rs.getString("instruction_name")%>" class="form-control col-sm-4"></td>
                    <td><input type="text" name="desc" value="<%=rs.getString("description")%>" class="form-control"></td>
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

