package com.webgiadung.doanweb.controller;

import com.webgiadung.doanweb.dao.AuthDao;
import com.webgiadung.doanweb.dao.EmailVerificationDao;
import com.webgiadung.doanweb.model.User;
import java.util.regex.Pattern;
import com.webgiadung.doanweb.services.EmailService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
    private static final Pattern EMAIL_RE =
            Pattern.compile("^[^\\s@]+@[^\\s@]+\\.[^\\s@]+$");
    private static final Pattern PHONE_RE =
            Pattern.compile("^0\\d{9,10}$"); // 10-11 số, bắt đầu 0
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        email = (email == null) ? "" : email.trim().toLowerCase();
        phone = (phone == null) ? "" : phone.trim();
        password = (password == null) ? "" : password;
        repassword = (repassword == null) ? "" : repassword;

        // 1. Check nhập đủ (chống bypass)
        if (email.isEmpty() || phone.isEmpty() || password.isEmpty() || repassword.isEmpty()) {
            request.setAttribute("error", "Vui lòng nhập đầy đủ thông tin");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }
        // 1.1 Check email đúng định dạng
        if (!EMAIL_RE.matcher(email).matches()) {
            request.setAttribute("error", "Email không đúng định dạng");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }

// Check số điện thoại hợp lệ
        if (!PHONE_RE.matcher(phone).matches()) {
            request.setAttribute("error", "Số điện thoại không hợp lệ (bắt đầu 0, 10-11 chữ số)");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }

//  Check mật khẩu tối thiểu
        if (password.length() < 6) {
            request.setAttribute("error", "Mật khẩu tối thiểu 6 ký tự");
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

        //  Check email tồn tại
        if (authDao.checkEmailExists(email)) {
            request.setAttribute("error", "Email đã tồn tại");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }
        //  Check phone tồn tại
        if (authDao.checkPhoneExists(phone)) {
            request.setAttribute("error", "Số điện thoại đã tồn tại");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }
        //  Tạo user
        User user = new User();
        user.setEmail(email);
        user.setPassword(password);
        user.setPhone(phone);
        user.setRole(0);   // USER
        user.setStatus(0);// chưa xác thực

        try {
            // Lưu DB
            authDao.register(user);

            //  Tạo token
            String token = java.util.UUID.randomUUID().toString();

            //  Lưu token
            EmailVerificationDao evDao = new EmailVerificationDao();
            evDao.saveToken(email, token);

            //  Tạo link xác nhận
            String verifyLink =
                    request.getScheme() + "://" +
                            request.getServerName() + ":" +
                            request.getServerPort() +
                            request.getContextPath() +
                            "/verify?token=" + token;

            //  Gửi mail
            EmailService emailService = new EmailService();
            emailService.sendVerifyEmail(email, verifyLink);

            //  Thông báo
            response.sendRedirect(request.getContextPath() + "/login.jsp?msg=verify");
        } catch (Exception ex) {
            ex.printStackTrace();
            request.setAttribute("error", "Hệ thống đang lỗi, vui lòng thử lại sau.");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        }

//        response.sendRedirect(request.getContextPath() + "/login.jsp");

//        // 6. Chuyển sang login
//        response.sendRedirect(request.getContextPath() + "/login");
//        return;


    }
}
