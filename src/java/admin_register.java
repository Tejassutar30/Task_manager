/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Tejas S. Sutar
 */
public class admin_register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String admin_name=req.getParameter("aname");
        String admin_address=req.getParameter("a_address");
        String admin_contact=req.getParameter("acontact");
        String admin_email=req.getParameter("aemail");
        String admin_password=req.getParameter("apass");
        String admin_confirm_password=req.getParameter("acon_pass");
        String admin_id=req.getParameter("admin_id");
        String event=req.getParameter("btn");
        
        
        out.println(admin_name);
        out.println(admin_contact);
        out.println(admin_email);
        out.println(admin_password);
        out.println(admin_confirm_password);
        out.println(admin_address);
        
        Database db=new Database();
        String result=db.dbconnect();
        out.println(result);
        
        if(event.equals("Register"))
        {
            String insert=db.Query("insert into admin_register(admin_name,address,contact,email_id,password)values('"+admin_name+"','"+admin_address+"','"+admin_contact+"','"+admin_email+"','"+admin_password+"')", "Record Inserted");
            if (insert.contains("Record Inserted")) {
                resp.sendRedirect("admin_login.jsp");  // Redirects to login page
            } else {
                resp.sendRedirect("error.jsp");  // Redirects to an error page in case of failure
            }
        }
 
        if(event.equals("Delete"))
        {
            String delete=db.Query("delete from admin_register where admin_id='"+admin_id+"'", "Record Deleted");
            if (delete.contains("Record Deleted")) {
                resp.sendRedirect("admin_register_list.jsp");  // Redirects to login page
            } else {
                resp.sendRedirect("error.jsp");  // Redirects to an error page in case of failure
            }
        }
        
         if(event.equals("Update"))
        {
            String update=db.Query("update admin_register set admin_name='"+admin_name+"',address='"+admin_address+"',contact='"+admin_contact+"',email_id='"+admin_email+"',password='"+admin_password+"' where admin_id='"+admin_id+"'", "Record Updated");
            if (update.contains("Record Updated")) {
                resp.sendRedirect("admin_register_list.jsp");  // Redirects to login page
            } else {
                resp.sendRedirect("error.jsp");  // Redirects to an error page in case of failure
            }
        }
    }

    
}
