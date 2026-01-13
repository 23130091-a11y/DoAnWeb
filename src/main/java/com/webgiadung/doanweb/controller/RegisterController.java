package com.webgiadung.doanweb.controller;

import com.webgiadung.doanweb.dao.AuthDao;
import com.webgiadung.doanweb.dao.EmailVerificationDao;
import com.webgiadung.doanweb.model.User;

import com.webgiadung.doanweb.services.EmailService;
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
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }

        // 2. Check mật khẩu khớp
        if (!password.equals(repassword)) {
            request.setAttribute("error", "Mật khẩu không khớp");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }

        AuthDao authDao = new AuthDao();

        // 3. Check email tồn tại
        if (authDao.checkEmailExists(email)) {
            request.setAttribute("error", "Email đã tồn tại");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }

        // 4. Tạo user
        User user = new User();
        user.setEmail(email);
        user.setPassword(password);
        user.setPhone(phone);
        user.setRole(0);   // USER
        user.setStatus(0);// chưa xác thực

        // 5. Lưu DB
        authDao.register(user);

        // ===== THÊM PHẦN NÀY =====

        // 6. Tạo token
        String token = java.util.UUID.randomUUID().toString();

        // 7. Lưu token
        EmailVerificationDao evDao = new EmailVerificationDao();
        evDao.saveToken(email, token);

        // 8. Tạo link xác nhận
        String verifyLink =
                request.getScheme() + "://" +
                        request.getServerName() + ":" +
                        request.getServerPort() +
                        request.getContextPath() +
                        "/verify?token=" + token;

        // 9. Gửi mail
        EmailService emailService = new EmailService();
        emailService.sendVerifyEmail(email, verifyLink);

        // 10. Thông báo
        response.sendRedirect(
                request.getContextPath() + "/login.jsp?msg=verify"
        );

//        response.sendRedirect(request.getContextPath() + "/login.jsp");

//        // 6. Chuyển sang login
//        response.sendRedirect(request.getContextPath() + "/login");
//        return;


    }
}
