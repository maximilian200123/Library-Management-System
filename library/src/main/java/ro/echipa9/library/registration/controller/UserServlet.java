package ro.echipa9.library.registration.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import ro.echipa9.library.registration.dao.UserDao;
import ro.echipa9.library.registration.model.User;

import java.io.IOException;

@WebServlet(name = "UserServlet", value = "/register")
public class UserServlet extends HttpServlet {
    private UserDao userDao;

    @Override
    //creating a new DB entry
    public void init(){
        userDao = new UserDao();
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //getting the parameters from the html
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        //creating a new user with the parameters taken
        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setPassword(password);

        try{
            userDao.registerUser(user);
        }
        catch(Exception e){
            //printing the errors if there are any
            e.printStackTrace();
        }

        //redirecting the user to another page if the entry is successfully created
        response.sendRedirect("userDetails.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}