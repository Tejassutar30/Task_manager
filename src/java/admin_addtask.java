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
public class admin_addtask extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String task_name=req.getParameter("tname");
        String project_name=req.getParameter("pname");
        String priority=req.getParameter("prio");
        String description=req.getParameter("desc");
        String owner_name=req.getParameter("oname");
        String event=req.getParameter("btn");
        
        
        out.println(task_name);
        out.println(project_name);
        out.println(priority);
        out.println(description);
        out.println(owner_name);
        
        Database db=new Database();
        String result=db.dbconnect();
        out.println(result);
        
        if(event.equals("Add"))
        {
            String insert=db.Query("insert into admin_addtask(task_name,project_name,owner_name,priority,description)values('"+task_name+"','"+project_name+"','"+owner_name+"','"+priority+"','"+description+"')", "Record Inserted");
            out.println(insert);
        }
        
        
    }
    

}
