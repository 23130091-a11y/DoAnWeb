package com.webgiadung.doanweb.controller.cart;

import com.webgiadung.doanweb.model.Cart;
import com.webgiadung.doanweb.model.CartItem;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

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

        int newQuantity = 0;
        double newSubtotal = 0;
        double cartTotal = 0;
        int cartQty = 0;

        if (cart != null) {
            if ("inc".equals(action)) {
                cart.increaseQuantity(productId);
            } else if ("dec".equals(action)) {
                cart.decreaseQuantity(productId);
            }

            // Lấy lại thông số từ Map 'data' trong Cart (vì get() đang private)
            // Hoặc bạn có thể dùng cart.getItems() để tìm
            for (CartItem item : cart.getItems()) {
                if (item.getProduct().getId() == productId) {
                    newQuantity = item.getQuantity();
                    newSubtotal = item.getTotalPrice();
                    break;
                }
            }
            cartTotal = cart.getTotalPrice();
            cartQty = cart.getTotalQuantity();
        }

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        // Trả thêm cartQty để cập nhật con số trên Header nếu cần
        out.print("{\"newQuantity\":" + newQuantity +
                ", \"newSubtotal\":" + newSubtotal +
                ", \"cartTotal\":" + cartTotal +
                ", \"cartQty\":" + cartQty + "}");
        out.flush();
    }
}