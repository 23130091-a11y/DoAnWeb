package com.webgiadung.doanweb.controller;

import com.webgiadung.doanweb.dao.OrderDao;
import com.webgiadung.doanweb.model.User;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.*;

@WebServlet("/account")
public class AccountController extends HttpServlet {

    private final OrderDao orderDao = new OrderDao();

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
}