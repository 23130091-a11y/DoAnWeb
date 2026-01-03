package com.webgiadung.doanweb.controller.admin;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "FilterOrderServlet", value = "/filter-order")
public class FilterOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String sp = request.getParameter("statusPayment");
//        String st = request.getParameter("statusTransport");
//
//        Integer statusPayment = (sp != null && !sp.isEmpty()) ? Integer.valueOf(sp) : null;
//        Integer statusTransport = (st != null && !st.isEmpty()) ? Integer.valueOf(st) : null;
//
//        OrderAdminDao orderAdminDao = new OrderAdminDao();
//        List<OrderAdmin> orders = orderAdminDao.filterOrders(statusPayment, statusTransport);
//
//        request.setAttribute("orders", orders);
//        request.getRequestDispatcher("/admin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}