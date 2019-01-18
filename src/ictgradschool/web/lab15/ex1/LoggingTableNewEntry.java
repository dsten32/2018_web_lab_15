package ictgradschool.web.lab15.ex1;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class LoggingTableNewEntry extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: Retrieve parameters and store new entries in the database
        // TODO: Redirect back to the LoggingTable

        HttpSession session = request.getSession();


        AccessLog newLog = new AccessLog();
        newLog.setName(request.getParameter("name"));
        newLog.setDesc(request.getParameter("desc"));

        AccessLogDAO accessLogDAO=new AccessLogDAO();
        try {
            accessLogDAO.addAccessLog(newLog,getServletContext());
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("../question1");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
    }
}
