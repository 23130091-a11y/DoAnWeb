package com.webgiadung.doanweb.controller.cart;

import com.webgiadung.doanweb.model.Cart;
import com.webgiadung.doanweb.model.CartItem;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DeleteCart", value = "/delete-cart")
public class DeleteCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        int id = Integer.parseInt(request.getParameter("id"));
//        HttpSession session = request.getSession();
//        Cart cart = (Cart)session.getAttribute("cart");
//        CartItem cartItem = cart.deleteItem(id);
//
//        if(cartItem == null) {
//            //todo
//        }
//        response.sendRedirect("cart");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        if (cart != null) {
            cart.deleteItem(productId);
            session.setAttribute("cart", cart);
        }

        // Trả về thông tin tổng giỏ hàng mới sau khi xóa
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.print("{\"cartTotal\":" + cart.getTotalPrice() +
                ", \"cartQty\":" + cart.getTotalQuantity() + "}");
        out.flush();
    }
}