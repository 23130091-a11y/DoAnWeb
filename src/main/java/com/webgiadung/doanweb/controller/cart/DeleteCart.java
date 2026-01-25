package com.webgiadung.doanweb.controller.cart;

import com.webgiadung.doanweb.model.Cart;
import com.webgiadung.doanweb.model.CartItem;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "DeleteCart", value = "/delete-cart")
public class DeleteCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        Cart cart = (Cart)session.getAttribute("cart");
        CartItem cartItem = cart.deleteItem(id);

        com.webgiadung.doanweb.model.User user = (com.webgiadung.doanweb.model.User) session.getAttribute("user");
        if (user != null) {
            Integer cartId = (Integer) session.getAttribute("CART_ID");
            com.webgiadung.doanweb.dao.CartDao cartDao = new com.webgiadung.doanweb.dao.CartDao();
            if (cartId == null) cartId = cartDao.getOrCreateCartId(user.getId());

            new com.webgiadung.doanweb.dao.CartItemDao().deleteItem(cartId, id);
            session.setAttribute("CART_ID", cartId);
        }

        if(cartItem == null) {
            //todo
        }
        response.sendRedirect("cart");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}