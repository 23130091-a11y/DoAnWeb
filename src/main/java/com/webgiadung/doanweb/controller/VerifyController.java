package com.webgiadung.doanweb.controller;

import com.webgiadung.doanweb.dao.AuthDao;
import com.webgiadung.doanweb.dao.EmailVerificationDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "VerifyController", value = "/verify")
public class VerifyController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String token = request.getParameter("token");

        if (token == null || token.isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/login.jsp?msg=invalid");
            return;
        }

        EmailVerificationDao evDao = new EmailVerificationDao();
        String email = evDao.getEmailByToken(token);

        // Token không hợp lệ
        if (email == null) {
            response.sendRedirect(request.getContextPath() + "/login.jsp?msg=invalid");
            return;
        }

        // Kích hoạt user
        AuthDao authDao = new AuthDao();
        authDao.activateUser(email);

        // Xóa token
        evDao.deleteToken(token);

        // Thành công
        response.sendRedirect(request.getContextPath() + "/login.jsp?msg=verified");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}