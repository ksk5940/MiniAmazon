package servlet;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;

public class CheckoutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        request.getSession().removeAttribute("cart");
        request.setAttribute("msg", "Order placed successfully!");
        request.getRequestDispatcher("checkout.jsp").forward(request, response);
    }
}
