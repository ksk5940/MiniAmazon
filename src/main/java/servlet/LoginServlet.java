package servlet;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;

import model.UserStore;
import model.User;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if(UserStore.validate(username, password)){
            HttpSession session = request.getSession();
            session.setAttribute("user", UserStore.findUser(username));
            response.sendRedirect("index.jsp");
        } else {
            request.setAttribute("error", "Invalid credentials!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
