package com.webgiadung.doanweb.controller.cart;

import com.webgiadung.doanweb.model.Cart;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "UpdateCart", value = "/update-cart")
public class UpdateCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        String action = request.getParameter("action");

        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        if (cart != null) {
            if ("inc".equals(action)) {
                cart.increaseQuantity(productId);
            } else if ("dec".equals(action)) {
                cart.decreaseQuantity(productId);
            }
            session.setAttribute("cart", cart);
        }

        response.sendRedirect(request.getContextPath() + "/cart");
    }
}