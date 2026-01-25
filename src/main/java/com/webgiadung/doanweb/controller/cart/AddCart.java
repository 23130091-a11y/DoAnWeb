package com.webgiadung.doanweb.controller.cart;

import com.webgiadung.doanweb.model.Cart;
import com.webgiadung.doanweb.model.CartItem;
import com.webgiadung.doanweb.model.Product;
import com.webgiadung.doanweb.model.User;
import com.webgiadung.doanweb.services.ProductService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@WebServlet(name = "AddCart", value = "/add-cart")
public class AddCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        // ===== 1. CHECK LOGIN =====
        User user = (User) session.getAttribute("user");
        if (user == null) {
            // lưu lại URL để login xong quay lại
            String query = request.getQueryString();
            session.setAttribute("redirectAfterLogin", "add-cart?" + query);

            response.sendRedirect("login");
            return;
        }

        // ===== 2. VALIDATE PARAM =====
        int productId;
        int quantity;

        try {
            productId = Integer.parseInt(request.getParameter("productId"));
            quantity = Integer.parseInt(request.getParameter("quantity"));
        } catch (Exception e) {
            response.sendRedirect("home");
            return;
        }

        if (quantity <= 0) quantity = 1;

        // ===== 3. LẤY / TẠO CART =====
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        // ===== 4. LẤY PRODUCT =====
        ProductService productService = new ProductService();
        Product product = productService.getProduct(productId);

        if (product == null) {
            response.sendRedirect("home");
            return;
        }

        // ===== 5. ADD CART =====
        cart.addItem(product, quantity);

        // ===== SAVE TO DB =====
        com.webgiadung.doanweb.dao.CartDao cartDao = new com.webgiadung.doanweb.dao.CartDao();
        com.webgiadung.doanweb.dao.CartItemDao itemDao = new com.webgiadung.doanweb.dao.CartItemDao();
        int cartId = cartDao.getOrCreateCartId(user.getId());
        itemDao.addOrInc(cartId, productId, quantity);
        session.setAttribute("CART_ID", cartId);

        // ===== 6. REDIRECT UX =====
        response.sendRedirect("product-detail?id=" + productId);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}