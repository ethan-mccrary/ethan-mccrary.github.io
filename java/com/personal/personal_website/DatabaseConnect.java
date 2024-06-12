package com.personal.personal_website;

import java.sql.*;

public class DatabaseConnect {
    Connection con = null;

    public Connection getRemoteConnection() {
        try {
            // Find driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            String dbName = "";
            String userName = "";
            String password = "";
            String hostname = "";
            String port = "";
            String jdbcUrl = "jdbc:mysql://" + hostname + ":" + port + "/" + dbName + "?user=" + userName +
                    "&password=" + password;

            // Make Connection
            con = DriverManager.getConnection(jdbcUrl);
        } catch (ClassNotFoundException | SQLException e) { e.printStackTrace();}

        return con;
    }

    public ResultSet getCourses(Connection con) throws SQLException {
        Statement statement = con.createStatement();
        return statement.executeQuery("select courseNo, name, prof, descrip from courses order by " +
                "courseNo");
    }
}
