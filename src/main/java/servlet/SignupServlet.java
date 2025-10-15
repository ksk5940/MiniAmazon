package servlet;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;

import model.User;
import model.UserStore;

public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if(UserStore.findUser(username) != null){
            request.setAttribute("error", "User already exists!");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } else {
            UserStore.addUser(new User(username, password));
            request.setAttribute("msg", "Signup successful! Please login.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
