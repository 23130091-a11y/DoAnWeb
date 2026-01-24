package com.webgiadung.doanweb.controller;

import com.webgiadung.doanweb.dao.AuthDao;
import com.webgiadung.doanweb.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {
        "/admin/customers",          // GET: list + search
        "/admin/customers/update",   // POST: update
        "/admin/customers/lock"      // POST: soft delete (status=0)
})
public class AdminCustomerController extends HttpServlet {

    private final AuthDao authDao = new AuthDao();

    private boolean isAdmin(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session == null) return false;

        Object obj = session.getAttribute("user");
        if (!(obj instanceof User)) obj = session.getAttribute("USER_LOGIN");
        if (!(obj instanceof User)) return false;

        User ses = (User) obj;

        // reload từ DB để lấy role/status mới nhất
        User fresh = authDao.findByIdFull(ses.getId());
        if (fresh == null) return false;

        // cập nhật lại session luôn cho đồng bộ
        session.setAttribute("user", fresh);

        return fresh.getRole() == 1 && fresh.getStatus() == 1;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (!isAdmin(request)) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        String q = request.getParameter("q");
        List<User> users = authDao.findUsers(q);

        request.setAttribute("users", users);
        request.setAttribute("q", q == null ? "" : q);


        request.setAttribute("tab", "customers");

        request.getRequestDispatcher("/admin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (!isAdmin(request)) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        String uri = request.getRequestURI();

        if (uri.endsWith("/admin/customers/update")) {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            int role = Integer.parseInt(request.getParameter("role"));
            int status = Integer.parseInt(request.getParameter("status"));

            User u = new User();
            u.setId(id);
            u.setName(name);
            u.setEmail(email);
            u.setPhone(phone);
            u.setAddress(address);
            u.setRole(role);
            u.setStatus(status);

            String password = request.getParameter("password");

            if (password != null && !password.trim().isEmpty()) {
                u.setPassword(password.trim());
                authDao.adminUpdateUserWithPassword(u);
            } else {
                authDao.adminUpdateUser(u);
            }

            response.sendRedirect(request.getContextPath() + "/admin/customers");
            return;

        }

        if (uri.endsWith("/admin/customers/lock")) {
            int id = Integer.parseInt(request.getParameter("id"));
            authDao.adminSoftDeleteUser(id);

            response.sendRedirect(request.getContextPath() + "/admin/customers");
            return;
        }

        response.sendRedirect(request.getContextPath() + "/admin/customers");
    }
}
