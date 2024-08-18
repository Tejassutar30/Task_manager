/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Tejas S. Sutar
 */
public class admin_login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String username=req.getParameter("email");
        String password=req.getParameter("password");
        String event=req.getParameter("btn");
        
        out.println(username);
        out.println(password);
        
        if(event.equals("Login"))
        {
            try
            {
                Connection cn=null;
                Statement st=null;
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/task_manager","root","");
                st=cn.createStatement();
                String sql="select * from admin_register where email_id='"+username+"' and password='"+password+"'";
                ResultSet rs=st.executeQuery(sql);
                if(rs.next())
                {
                    resp.sendRedirect("admin_addtask.jsp");
                }
                else
                {
                    out.println("Login failed : Incorrect password and username");
                }
            }
            catch(Exception ex)
            {
                out.println(ex.toString());
            }
        }
    }

    

}
