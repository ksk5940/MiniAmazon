package servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.*;
import javax.servlet.http.*;

import model.Product;
import model.ProductList;

public class CartServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HttpSession session = req.getSession();
        // Only allow if user logged in
        if (session.getAttribute("user") == null) {
            req.setAttribute("error", "You must login to add products to your cart!");
            req.getRequestDispatcher("login.jsp").forward(req, res);
            return;
        }

        List<Product> cart = (List<Product>) session.getAttribute("cart");
        if (cart == null) {
            cart = new java.util.ArrayList<>();
            session.setAttribute("cart", cart);
        }
        String idStr = req.getParameter("id");
        if (idStr != null) {
            int id = Integer.parseInt(idStr);
            for (Product p : ProductList.getProducts()) {
                if (p.getId() == id) {
                    cart.add(p);
                }
            }
        }
        req.getRequestDispatcher("cart.jsp").forward(req, res);
    }
}
