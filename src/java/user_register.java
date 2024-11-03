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
public class user_register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String user_name=req.getParameter("uname");
        String user_address=req.getParameter("u_address");
        String user_contact=req.getParameter("ucontact");
        String user_email=req.getParameter("uemail");
        String user_password=req.getParameter("upass");
        String user_confirm_password=req.getParameter("ucon_pass");
        String occupation=req.getParameter("occup");
        String user_id=req.getParameter("user_id");
        String event=req.getParameter("btn");
        
        
        out.println(user_name);
        out.println(user_contact);
        out.println(user_email);
        out.println(user_password);
        out.println(user_confirm_password);
        out.println(user_address);
        out.println(occupation);
        
        Database db=new Database();
        String result=db.dbconnect();
        out.println(result);
        
        if(event.equals("Register"))
        {
            String insert=db.Query("insert into employee_register(employee_name,address,contact,email_id,password,occupation)values('"+user_name+"','"+user_address+"','"+user_contact+"','"+user_email+"','"+user_password+"','"+occupation+"')", "Record Inserted");
            out.println(insert);
        }
 
        if(event.equals("Delete"))
        {
            String delete=db.Query("delete from employee_register where emp_id='"+user_id+"'", "Record Deleted");
            out.println(delete);
        }
        
         if(event.equals("Update"))
        {
            String update=db.Query("update employee_register set employee_name='"+user_name+"',address='"+user_address+"',contact='"+user_contact+"',email_id='"+user_email+"',password='"+user_password+"',occupation='"+occupation+"' where emp_id='"+user_id+"'", "Record Updated");
            out.println(update);
        }
    }
  
}
