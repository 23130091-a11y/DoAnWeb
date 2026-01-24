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

        // 4) Điều hướng theo role
        if (user.getRole() == 1) {
            response.sendRedirect(request.getContextPath() + "/admin/customers");
        } else {
            response.sendRedirect(request.getContextPath() + "/list-product");
        }
    }
}