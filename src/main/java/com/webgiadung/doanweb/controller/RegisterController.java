package com.webgiadung.doanweb.controller;

import com.webgiadung.doanweb.dao.AuthDao;
import com.webgiadung.doanweb.model.User;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/register")
public class RegisterController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");

        // 1. Check nhập đủ
        if (email == null || password == null || phone == null ||
                email.isEmpty() || password.isEmpty() || phone.isEmpty()) {
            request.setAttribute("error", "Vui lòng nhập đầy đủ thông tin");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        // 2. Check mật khẩu khớp
        if (!password.equals(repassword)) {
            request.setAttribute("error", "Mật khẩu không khớp");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        AuthDao authDao = new AuthDao();

        // 3. Check email tồn tại
        if (authDao.checkEmailExists(email)) {
            request.setAttribute("error", "Email đã tồn tại");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        // 4. Tạo user
        User user = new User();
        user.setEmail(email);
        user.setPassword(password);
        user.setPhone(phone);
        user.setRole(0);   // USER
        user.setStatus(1);// ACTIVE

        // 5. Lưu DB
        authDao.register(user);

        // 6. Chuyển sang login
        response.sendRedirect(request.getContextPath() + "/login");
        return;

    }

}
