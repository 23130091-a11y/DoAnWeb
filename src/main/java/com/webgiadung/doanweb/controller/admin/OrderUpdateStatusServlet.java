package com.webgiadung.doanweb.controller.admin;

import com.webgiadung.doanweb.dao.OrderAdminDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "OrderUpdateStatusServlet", value = "/order-update-status")
public class OrderUpdateStatusServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrderAdminDao orderAdminDao = new OrderAdminDao();
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        String type = request.getParameter("type");
        int status = Integer.parseInt(request.getParameter("status"));

        if ("transport".equals(type)) {
            orderAdminDao.updateStatusTransport(orderId, status);
        } else if ("payment".equals(type)) {
            orderAdminDao.updateStatusPayment(orderId, status);
        }

        response.sendRedirect("order-admin");
    }
}