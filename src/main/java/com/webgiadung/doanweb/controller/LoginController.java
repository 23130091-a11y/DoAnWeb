package com.webgiadung.doanweb.controller;

import com.webgiadung.doanweb.model.User;
import com.webgiadung.doanweb.services.AuthService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        AuthService authService = new AuthService();
        User user = authService.checkLogin(email, password);

        // 1) Sai tài khoản/mật khẩu
        if (user == null) {
            request.setAttribute("error", "Sai email hoặc mật khẩu");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
            return;
        }

        // 2) Bị khóa
        if (user.getStatus() == 0) {
            request.setAttribute("error", "Tài khoản đã bị khóa!");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
            return;
        }

        // 3) Lưu session
        HttpSession session = request.getSession(true);
        session.setAttribute("user", user);
        session.setAttribute("USER_LOGIN", user);

        // ===== LOAD CART FROM DB INTO SESSION (for header) =====
        try {
            com.webgiadung.doanweb.dao.CartDao cartDao = new com.webgiadung.doanweb.dao.CartDao();
            com.webgiadung.doanweb.dao.CartItemDao itemDao = new com.webgiadung.doanweb.dao.CartItemDao();
            com.webgiadung.doanweb.services.ProductService productService = new com.webgiadung.doanweb.services.ProductService();

            int cartId = cartDao.getOrCreateCartId(user.getId());
            session.setAttribute("CART_ID", cartId);

            var rows = itemDao.findItems(cartId);
            com.webgiadung.doanweb.model.Cart cart = new com.webgiadung.doanweb.model.Cart();
            for (var r : rows) {
                com.webgiadung.doanweb.model.Product p = productService.getProduct(r.productId);
                if (p != null) cart.addItem(p, r.quantity);
            }
            session.setAttribute("cart", cart);
        } catch (Exception e) {
            e.printStackTrace();
        }


        // 4) Điều hướng theo role
        if (user.getRole() == 1) {
            response.sendRedirect(request.getContextPath() + "/admin/customers");
            return;
        }

// USER thường: nếu có redirect hợp lệ thì quay lại đúng trang
        String redirect = request.getParameter("redirect");
        if (redirect != null) redirect = redirect.trim();

// chỉ cho redirect nội bộ (tránh open redirect)
        if (redirect != null && !redirect.isEmpty() && redirect.startsWith("/") && !redirect.startsWith("//")) {
            response.sendRedirect(request.getContextPath() + redirect);
        } else {
            response.sendRedirect(request.getContextPath() + "/list-product");
        }

    }
}