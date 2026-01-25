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

        com.webgiadung.doanweb.model.User user = (com.webgiadung.doanweb.model.User) session.getAttribute("user");
        if (user != null && cart != null) {
            Integer cartId = (Integer) session.getAttribute("CART_ID");
            com.webgiadung.doanweb.dao.CartDao cartDao = new com.webgiadung.doanweb.dao.CartDao();
            if (cartId == null) cartId = cartDao.getOrCreateCartId(user.getId());

            int newQty = 0;
            for (var it : cart.getItems()) {
                if (it.getProduct().getId() == productId) { newQty = it.getQuantity(); break; }
            }

            new com.webgiadung.doanweb.dao.CartItemDao().setQuantity(cartId, productId, newQty);
            session.setAttribute("CART_ID", cartId);
        }
    }
}