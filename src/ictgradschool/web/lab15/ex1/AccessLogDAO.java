package ictgradschool.web.lab15.ex1;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import com.mysql.jdbc.Driver;

public class AccessLogDAO {

    //get all the table entries
    public List<AccessLog> allAccessLogs(){
        //place to put the returned info beans
        List<AccessLog> allLogs = new ArrayList<>();

        //load our props
        Properties dbProps = new Properties();
        try (FileInputStream fIn = new FileInputStream("C:\\Users\\dwc1\\IdeaProjects\\2018s_web_lab_15\\mysql.properties")) {
            dbProps.load(fIn);
        } catch (IOException e) {
            e.printStackTrace();
        }

        try {
            Class.forName("org.mariadb.jdbc.Driver"); // com.mysql.jdbc.Driver / org.postgresql.Driver
        } catch (Exception except) {
            except.printStackTrace();
        }


        //connect
        try (Connection conn = DriverManager.getConnection(dbProps.getProperty("url"), dbProps)) {
        System.out.println("Connection successful");
            //preparing our query
            try (PreparedStatement Stmt = conn.prepareStatement("SELECT * FROM access_log")) {
                //sending query
                try (ResultSet rs = Stmt.executeQuery()) {
                    //get column numbers and set as variables
                    int idCol = rs.findColumn("id");
                    int nameCol = rs.findColumn("name");
                    int descCol = rs.findColumn("description");
                    int tsCol = rs.findColumn("timestamp");
                    //making AccessLog beans from table rows
                    while (rs.next()) {
                        AccessLog accessLog = new AccessLog();

                        accessLog.setId(rs.getInt(idCol));
                        accessLog.setName(rs.getString(nameCol));
                        accessLog.setDesc(rs.getString(descCol));
                        accessLog.setTimeStamp(rs.getTimestamp(tsCol));

                        allLogs.add(accessLog);
                    }

                } catch (SQLException e) {//end of resultset try block
                    e.printStackTrace();
                }
            } catch (SQLException e1) {// End of prepare statement try block
                e1.printStackTrace();
            }
        }catch (SQLException e) {//end of connection try block
            e.printStackTrace();
        }
        //got our list now give it away
        return allLogs;
    }


    //add new logs to the table
    public void addAccessLog(AccessLog a){

        //load our props
        Properties dbProps = new Properties();
        try (FileInputStream fIn = new FileInputStream("mysql.properties")) {
            dbProps.load(fIn);
        } catch (IOException e) {
            e.printStackTrace();
        }

        //connect
        try (Connection conn = DriverManager.getConnection(dbProps.getProperty("url"), dbProps)) {
            System.out.println("Connection successful");

            //preparing our query
            try (PreparedStatement Stmt = conn.prepareStatement("INSERT INTO access_log (name, description) VALUES (?,?)")){
                //getting the values from our imaginatively named bean and inserting them into the query
                Stmt.setString(1, a.getName());
                Stmt.setString(2, a.getDesc());

                //sending update
                Stmt.executeUpdate();

            } catch (SQLException e1) {// End of prepare statement try block
                e1.printStackTrace();
            }
        }catch (SQLException e) {//end of connection try block
            e.printStackTrace();
        }


    }

}
