package com.webgiadung.doanweb.filter;

import com.webgiadung.doanweb.model.User;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebFilter(urlPatterns = {"/admin/*", "/admin.jsp"})
public class AdminFilter implements Filter {
    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;

        HttpSession session = request.getSession(false);
        User u = null;

        if (session != null) {
            Object obj = session.getAttribute("USER_LOGIN");
            if (obj instanceof User) u = (User) obj;
            else {
                obj = session.getAttribute("user");
                if (obj instanceof User) u = (User) obj;
            }
        }

        // Chặn nếu chưa login hoặc không phải admin hoặc bị khóa
        if (u == null || u.getRole() != 1 || u.getStatus() == 0) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        chain.doFilter(req, res);
    }
}