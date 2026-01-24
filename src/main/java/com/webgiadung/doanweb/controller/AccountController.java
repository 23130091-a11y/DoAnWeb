package com.webgiadung.doanweb.controller;

import com.webgiadung.doanweb.dao.OrderDao;
import com.webgiadung.doanweb.model.User;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.*;
import com.webgiadung.doanweb.dao.AuthDao;
@WebServlet("/account")
public class AccountController extends HttpServlet {

    private final OrderDao orderDao = new OrderDao();
    private final AuthDao authDao = new AuthDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        try {
            var orders = orderDao.findOrdersByUser(user.getId());

            Map<Integer, List<Map<String, Object>>> orderItemsMap = new HashMap<>();
            for (var o : orders) {
                int orderId = (int) o.get("id");
                orderItemsMap.put(orderId, orderDao.findItemsByOrder(orderId));
            }

            req.setAttribute("orders", orders);
            req.setAttribute("orderItemsMap", orderItemsMap);

            req.getRequestDispatcher("/account.jsp").forward(req, resp);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");

        // 1) UPDATE PROFILE
        if ("updateProfile".equals(action)) {
            String name = trim(req.getParameter("name"));
            String phone = trim(req.getParameter("phone"));
            String address = trim(req.getParameter("address"));

            // FORM ĐỊA CHỈ không gửi name/phone -> giữ nguyên từ session
            if (name.isEmpty()) name = user.getName();
            if (phone.isEmpty()) phone = user.getPhone();

            // Nếu user cũ chưa có name (null) thì mới báo lỗi
            if (name == null || name.trim().isEmpty()) {
                req.setAttribute("profileError", "Tên không được để trống!");
                doGet(req, resp);
                return;
            }

            boolean ok = authDao.updateProfile(user.getId(), name, phone, address);
            if (ok) {
                User fresh = authDao.findByIdFull(user.getId());
                if (fresh != null) session.setAttribute("user", fresh);
                req.setAttribute("profileMsg", "Cập nhật thông tin thành công!");
            } else {
                req.setAttribute("profileError", "Cập nhật thất bại, thử lại!");
            }

            doGet(req, resp);
            return;
        }
        // 2) CHANGE PASSWORD
        if ("changePassword".equals(action)) {
            String oldPass = trim(req.getParameter("oldPassword"));
            String newPass = trim(req.getParameter("newPassword"));
            String confirm = trim(req.getParameter("confirmPassword"));

            if (oldPass.isEmpty() || newPass.isEmpty() || confirm.isEmpty()) {
                req.setAttribute("passError", "Vui lòng nhập đầy đủ các ô mật khẩu!");
                doGet(req, resp);
                return;
            }
            if (!newPass.equals(confirm)) {
                req.setAttribute("passError", "Mật khẩu mới và xác nhận không khớp!");
                doGet(req, resp);
                return;
            }
            if (!authDao.checkPassword(user.getId(), oldPass)) {
                req.setAttribute("passError", "Mật khẩu hiện tại không đúng!");
                doGet(req, resp);
                return;
            }

            boolean ok = authDao.updatePassword(user.getId(), newPass);
            if (ok) req.setAttribute("passMsg", "Đổi mật khẩu thành công!");
            else req.setAttribute("passError", "Đổi mật khẩu thất bại, thử lại!");

            doGet(req, resp);
            return;
        }

        resp.sendRedirect(req.getContextPath() + "/account");
    }

    private String trim(String s) {
        return s == null ? "" : s.trim();
    }
}