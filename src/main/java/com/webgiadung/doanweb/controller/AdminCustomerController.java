package com.webgiadung.doanweb.controller.admin;

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
        User u = (User) session.getAttribute("user");
        return u != null && u.getRole() == 1;
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
