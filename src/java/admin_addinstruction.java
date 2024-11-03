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
public class admin_addinstruction extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String instruction_name=req.getParameter("iname");
        String description=req.getParameter("desc");
        String inst_id=req.getParameter("inst_id");
        String event=req.getParameter("btn");
        
        
        out.println(instruction_name);
        out.println(description);
        
        
        Database db=new Database();
        String result=db.dbconnect();
        out.println(result);
        
        
        if(event.equals("Add"))
        {
            String insert=db.Query("insert into admin_instruction(instruction_name,description)values('"+instruction_name+"','"+description+"')", "Record Inserted");
            if (insert.contains("Record Inserted")) {
                resp.sendRedirect("admin_addinstruction_list.jsp");  // Redirects to login page
            } else {
                resp.sendRedirect("error.jsp");  // Redirects to an error page in case of failure
            }
        }
        if(event.equals("Delete"))
        {
            String delete=db.Query("delete from admin_instruction where inst_id='"+inst_id+"'", "Record Deleted");
            if (delete.contains("Record Deleted")) {
                resp.sendRedirect("admin_addinstruction_list.jsp");  // Redirects to login page
            } else {
                resp.sendRedirect("error.jsp");  // Redirects to an error page in case of failure
            }
        }
        
         if(event.equals("Update"))
        {
            String update=db.Query("update admin_instruction set instruction_name='"+instruction_name+"',description='"+description+"' where inst_id='"+inst_id+"'", "Record Updated");
            if (update.contains("Record Updated")) {
                resp.sendRedirect("admin_addinstruction_list.jsp");  // Redirects to login page
            } else {
                resp.sendRedirect("error.jsp");  // Redirects to an error page in case of failure
            }
        }
    }

}
