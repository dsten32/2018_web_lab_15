package ictgradschool.web.lab15.ex1;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class LoggingTable extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: Retrieve LoggingTable entries and pass them to the LoggingTableDisplay.jsp file
        HttpSession session = request.getSession(); // this will create a session if one doesn't exist.

        //create our DAO instance, retrieve our access logs
        AccessLogDAO accessLogDAO=new AccessLogDAO();
        List<AccessLog> allAccessLogs = accessLogDAO.allAccessLogs();

        //add our access logs to the request
        request.setAttribute("allAccessLogs",allAccessLogs);

        //send request on to the jsp file for display
        request.getRequestDispatcher("LoggingTableDisplay.jsp").forward(request,response);

    }
}
