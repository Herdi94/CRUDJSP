package config;

import com.mysql.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnectivity {
    private static Connection conn;

    public static Connection getConnection(){
        try{
            DriverManager.registerDriver(new Driver());
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbo","root","root");
        }catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
        return conn;
    }
}
