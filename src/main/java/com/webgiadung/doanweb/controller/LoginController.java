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

        if (user != null) {
            HttpSession session = request.getSession(true);
            session.setAttribute("user", user);
            session.setAttribute("USER_LOGIN", user);

            // PHÂN QUYỀN CHUYỂN TRANG
            if (user.getRole() == 1) {
                // ADMIN
                response.sendRedirect(request.getContextPath() + "/admin/customers");
            } else {
                // USER
                response.sendRedirect(request.getContextPath() + "/list-product");
            }
            return;
        }
    }
}