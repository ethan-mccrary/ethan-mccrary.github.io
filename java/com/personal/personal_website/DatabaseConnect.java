package com.personal.personal_website;

import java.sql.*;

public class DatabaseConnect {
    Connection con = null;

    public Connection getRemoteConnection() {
        try {
            // Find driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            String dbName = "emccrary_data";
            String userName = "emccrary";
            String password = "Moonghostdragon1*";
            String hostname = "emccrary-data.c1ptjdxybasa.us-east-2.rds.amazonaws.com";
            String port = "3306";
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
