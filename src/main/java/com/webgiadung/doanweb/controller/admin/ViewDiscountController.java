package com.webgiadung.doanweb.controller.admin;

import com.webgiadung.doanweb.model.Discounts;
import com.webgiadung.doanweb.services.DiscountService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.format.DateTimeFormatter;

@WebServlet("/api/admin/discount-detail")
public class ViewDiscountController extends HttpServlet {

    private final DiscountService discountService = new DiscountService();
    private final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        PrintWriter out = response.getWriter();
        String idParam = request.getParameter("id");

        try {
            if (idParam == null || idParam.isEmpty()) {
                response.setStatus(400);
                out.print("{\"error\": \"Missing ID\"}");
                return;
            }

            int id = Integer.parseInt(idParam);
            Discounts d = discountService.getDiscountById(id);

            if (d != null) {
                StringBuilder json = new StringBuilder();
                json.append("{");
                json.append("\"id\": ").append(d.getId()).append(",");
                json.append("\"name\": \"").append(escapeJson(d.getName())).append("\",");

                // SỬA Ở ĐÂY: Nếu là chuỗi thì phải có \" bao quanh giá trị
                // Nếu getTypeDiscount trả về chuỗi "percentage", nó sẽ thành "typeDiscount": "percentage"
                json.append("\"typeDiscount\": \"").append(d.getTypeDiscount()).append("\",");

                json.append("\"discount\": ").append(d.getDiscount()).append(",");
                json.append("\"description\": \"").append(escapeJson(d.getDescription())).append("\",");
                json.append("\"startDate\": \"").append(d.getStartDate().format(formatter)).append("\",");
                json.append("\"endDate\": \"").append(d.getEndDate().format(formatter)).append("\"");
                json.append("}");

                out.print(json.toString());
                out.flush(); // Đẩy dữ liệu đi ngay
            }else {
                response.setStatus(404);
                out.print("{\"error\": \"Not found\"}");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(500);
            out.print("{\"error\": \"Server error\"}");
        } finally {
            out.flush();
        }
    }

    private String escapeJson(String input) {
        if (input == null) return "";
        return input.replace("\\", "\\\\")
                .replace("\"", "\\\"")
                .replace("\n", " ")
                .replace("\r", "");
    }
}