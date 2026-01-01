package com.webgiadung.doanweb.controller.admin;

import com.webgiadung.doanweb.dao.OrderAdminDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet(name = "OrderDeleteServlet", value = "/order-delete")
public class OrderDeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] ids = request.getParameterValues("orderIds"); // nhận mảng id từ form

        if(ids != null && ids.length > 0) {
            List<Integer> orderIds = Arrays.stream(ids)
                    .map(Integer::parseInt)
                    .collect(Collectors.toList());

            OrderAdminDao dao = new OrderAdminDao();
            dao.deleteOrders(orderIds);
        }

        // Sau khi xóa, redirect về trang order admin
        response.sendRedirect("order-admin");
    }
}