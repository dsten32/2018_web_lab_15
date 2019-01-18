package ictgradschool.web.lab15.ex4;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.*;
import java.util.Iterator;
import java.util.Map;

public class JSONSavingServlet extends HttpServlet {
    private String transactionDir;

    /**
     *
     * @param servletConfig
     *            a ServletConfig object containing information gathered when
     *            the servlet was created, including information from web.xml
     */
    public void init(ServletConfig servletConfig) throws ServletException{
        super.init(servletConfig);
        this.transactionDir = servletConfig.getInitParameter("json-save-directory");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /* In this method, retrieve the submitted parameters and generate   *
         * a JSON document to represent the data. An example of creating    *
         * a JSON document using the json-simple library can be seen below. */

        /* If any parameter is missing, redirect the user to the form again *
         * by calling the doGet(request, response); method. Use those       *
         * parameters to populate the form, and indicate the missing values */
        Map<String,String[]> map= request.getParameterMap();

        Iterator<Map.Entry<String, String[]>> i = map.entrySet().iterator();
        response.getWriter().println("\n\nkey: values");
        boolean br=true;
        while(i.hasNext() && br) {
            Map.Entry<String, String[]> entry = i.next();
            String key = entry.getKey();
            String[] values = entry.getValue();
            response.getWriter().print("\n" + key.toUpperCase() + ": ");
            for(String value: values) {

                if(value.length()==0){

                    doGet(request,response);
                    br=false;
                    break;
                }
                response.getWriter().print(value + ",");
            }
        }
        response.getWriter().print("\n");


        JSONObject transaction = new JSONObject();

        // Adds a String value to the JSON
        transaction.put("key", "value");

        // Create and populate a JSON array
        JSONArray jsonArray = new JSONArray();
        jsonArray.add("e");
        jsonArray.add(1);
        jsonArray.add(false);
        jsonArray.add(null);

        // Add the array to our object
        transaction.put("array", jsonArray);


        /* Save the JSON object to an appropriate directory, using the    *
         * 'invoice number' parameter as the filename, with the extension *
         * '.json'. An example filename might be '15678.json'. The method *
         * saveJSONObject() has been provided to save the JSON            */
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: Display your Exercise 4 JSP file

        response.sendRedirect("JSONForm.jsp");
    }

    /**
     * Writes the given JSONObject (in JSON format) to the specified file path
     *
     * @param file
     * @param jsonRecord
     * @return true if file written successfully, false otherwise
     */
    private boolean saveJSONObject(File file, JSONObject jsonRecord) {
        if (file.exists()) {
            return false;
        }

        try (BufferedWriter writer = new BufferedWriter( new FileWriter(file))) {
            writer.write(JSONObject.toJSONString(jsonRecord));
        } catch (IOException e) {
            return false;
        }

        return true;
    }
}
