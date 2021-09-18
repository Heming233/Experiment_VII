package campus.computer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JNDIUtils {
    private static String driver="com.mysql.cj.jdbc.Driver";
    private static String url="jdbc:mysql://127.0.0.1:3306/student?&user=root&password=123456"
            + "&useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true";
    private static Connection conn=null;

    public static void connectDB(){
        try{
            Class.forName(driver);
            conn= DriverManager.getConnection(url);
        }
        catch(SQLException | ClassNotFoundException e){
            System.out.println(e);
        }
    }

    public static Connection getConnection(){
        connectDB();
        return conn;
    }

    public static void closeConnection(){
        if(conn != null){
            try{
                conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }
}