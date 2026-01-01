package com.webgiadung.doanweb.controller;

import com.webgiadung.doanweb.dao.AuthDao;
import com.webgiadung.doanweb.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin/customers"})
public class AdminCustomerController extends HttpServlet {

    private final AuthDao authDao = new AuthDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String q = request.getParameter("q");
        List<User> customers = authDao.findUsers(q);

        request.setAttribute("customers", customers);
        request.setAttribute("q", q == null ? "" : q);

        request.getRequestDispatcher("/admin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        try {
            if ("update".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                User u = authDao.findUserById(id);
                if (u != null) {
                    u.setName(request.getParameter("name"));
                    u.setEmail(request.getParameter("email"));
                    u.setPhone(request.getParameter("phone"));
                    u.setAddress(request.getParameter("address"));

                    // IMPORTANT: role của bạn là int -> phải parseInt (lỗi bạn đang gặp)
                    u.setRole(Integer.parseInt(request.getParameter("role")));
                    u.setStatus(Integer.parseInt(request.getParameter("status"))); // 1/0

                    authDao.adminUpdateUser(u);
                }
            } else if ("delete".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                authDao.adminSoftDeleteUser(id);
            }
        } catch (Exception ignored) {}

        response.sendRedirect(request.getContextPath() + "/admin/customers#customer");
    }
}
