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
import java.io.PrintWriter;
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
            // Trả về mã 401 (Unauthorized) để AJAX biết và chuyển hướng login
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            return;
        }

        // ===== 2. VALIDATE PARAM =====
        int productId;
        int quantity;
        try {
            productId = Integer.parseInt(request.getParameter("productId"));
            quantity = Integer.parseInt(request.getParameter("quantity"));
        } catch (Exception e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
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
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            return;
        }

        // ===== 5. ADD CART =====
        cart.addItem(product, quantity);

        // ===== 6. TRẢ VỀ KẾT QUẢ CHO AJAX =====
        // Thay vì redirect hoặc in script, ta trả về JSON
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        PrintWriter out = response.getWriter();
        // Trả về tổng số lượng mới để update vào icon giỏ hàng trên Header
        out.print("{\"status\":\"success\", \"cartQty\":" + cart.getTotalQuantity() + "}");
        out.flush();
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}