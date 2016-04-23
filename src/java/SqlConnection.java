package edu.nku.csc450;

import java.sql.*;
import java.util.Scanner;
import javax.swing.JOptionPane; 

/* Example syntax for using this class /*

try(SqlConnection sql = new SqlConnection()){
    ResultSet result = sql.ExecuteQuery("SELECT LICENSE FROM CAR");

    while (result.next()){
        System.out.println(result.getString("LICENSE"));
    }
} catch (Exception ex) {
    System.out.println(ex);
}

*/

public class SqlConnection implements AutoCloseable{
    private Connection connection;
    private static String username;
    private static String password;

    public SqlConnection(){ }

    public ResultSet ExecuteQuery(String query) throws Exception{
        this.getConnection();
        Statement stmt = this.connection.createStatement();
        ResultSet result = stmt.executeQuery(query);

        return result;
    }

    public void ExecuteUpdate(String query) throws Exception{
        this.getConnection();
        Statement stmt = this.connection.createStatement();
        stmt.executeUpdate(query);
    }

    @Override
    public void close() throws Exception{
        if (connection != null){
            this.connection.close();
        }
    }

    public static void GetConnectionCredentials(){
        boolean valid = false;
        Scanner scanner = new Scanner(System.in);

        while (!valid){
           
            String inUser = JOptionPane.showInputDialog(null, "Enter database username");
            String inPass = JOptionPane.showInputDialog(null, "Enter database password");

            try{
                Connection testConnection = DriverManager.getConnection("jdbc:oracle:thin:@citdb.nku.edu:1521:csc450", inUser, inPass);

                if (testConnection.isValid(10)){
                    testConnection.close();
                    username = inUser;
                    password = inPass;
                    valid = true;
                }
            } catch (Exception ex) {
                System.out.println(ex);
                valid = false;
            }
        }
    }

    private void getConnection() throws Exception{
        if (this.connection == null){
            Class.forName("oracle.jdbc.driver.OracleDriver");
            this.connection = DriverManager.getConnection("jdbc:oracle:thin:@citdb.nku.edu:1521:csc450", username, password);
        }
    }
}
