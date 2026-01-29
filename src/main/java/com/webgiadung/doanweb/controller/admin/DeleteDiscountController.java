package com.webgiadung.doanweb.controller.admin;

import com.webgiadung.doanweb.dao.ProductDao;
import com.webgiadung.doanweb.dao.DiscountDao; // Giả sử bạn có DiscountDao
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/api/admin/delete-discount")
public class DeleteDiscountController extends HttpServlet {

    private ProductDao productDao = new ProductDao();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");

        try {
            String idRaw = req.getParameter("id");
            if (idRaw == null || idRaw.isEmpty()) {
                resp.getWriter().write("{\"status\":\"error\", \"message\":\"ID khong hop le\"}");
                return;
            }

            int discountId = Integer.parseInt(idRaw);
            productDao.removeDiscount(discountId);

            // Giả sử bạn có hàm xóa trong DiscountDao
            // boolean isDeleted = discountDao.delete(discountId);
            boolean isDeleted = true;

            if (isDeleted) {
                resp.getWriter().write("{\"status\":\"success\"}");
            } else {
                resp.getWriter().write("{\"status\":\"fail\", \"message\":\"Khong the xoa database\"}");
            }

        } catch (Exception e) {
            e.printStackTrace();

            String cleanMsg = e.getMessage() != null ? e.getMessage() : "Unknown error";
            cleanMsg = cleanMsg.replace("\"", "'")
                    .replace("\n", " ")
                    .replace("\r", " ");

            resp.getWriter().write("{\"status\":\"error\", \"message\":\"" + cleanMsg + "\"}");
        }
    }
}