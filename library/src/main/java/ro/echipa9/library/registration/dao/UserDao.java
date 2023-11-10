package ro.echipa9.library.registration.dao;

import ro.echipa9.library.registration.model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDao {
    //function that creates a DB entry
    public int registerUser(User user) throws ClassNotFoundException{
        String INSERT_USERS_SQL = "INSERT INTO users" +
                "(first_name,last_name,email,password) VALUES" +
                "(?,?,?,?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        //creating a sql connection to the database
        try(Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/users?useSSL=false","root","");

            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)){

                preparedStatement.setString(1,user.getFirstName());
                preparedStatement.setString(2, user.getLastName());
                preparedStatement.setString(3, user.getEmail());
                preparedStatement.setString(4, user.getPassword());

                System.out.println(preparedStatement);

                //executes the query or updates the query
                result = preparedStatement.executeUpdate();
        }

        catch(SQLException e){
                printSQLexception(e);
        }

        return result;
    }

    //function that returns the errors while trying to create a DB entry
    private void printSQLexception(SQLException exception){

        for(Throwable e: exception){

            if(e instanceof SQLException){

                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException)e).getSQLState());
                System.err.println("Error Code: " + ((SQLException)e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = exception.getCause();

                while(t != null){

                    System.out.println("Cause: " + t);
                    t = t.getCause();

                }
            }
        }
    }
}
