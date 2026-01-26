package com.webgiadung.doanweb.controller.admin;

import com.webgiadung.doanweb.model.Discounts;
import com.webgiadung.doanweb.services.DiscountService;
import com.webgiadung.doanweb.services.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;

@WebServlet("/admin/add-discount")
@MultipartConfig // BẮT BUỘC: Để đọc được dữ liệu FormData từ JavaScript (Fix lỗi 500)
public class AddDiscountController extends HttpServlet {

    private final DiscountService discountService = new DiscountService();
    private final ProductService productService = new ProductService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Đảm bảo nhận dữ liệu đúng định dạng UTF-8
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        try {
            // 1. Lấy dữ liệu từ Form
            String name = request.getParameter("eventName");
            String discountValueRaw = request.getParameter("discountValue");
            String startDateRaw = request.getParameter("startDate");
            String endDateRaw = request.getParameter("endDate");
            String scope = request.getParameter("applyScope");
            String type = request.getParameter("discountType");
            String desc = request.getParameter("eventDesc");
            String catIdRaw = request.getParameter("applyCategories");

            // 2. Kiểm tra dữ liệu bắt buộc (Fix lỗi NullPointerException)
            if (name == null || name.isBlank() || discountValueRaw == null || startDateRaw == null || endDateRaw == null) {
                response.setStatus(400);
                response.getWriter().write("{\"status\":\"error\", \"message\":\"Vui lòng điền đầy đủ các trường!\"}");
                return;
            }

            // 3. Ép kiểu an toàn
            double value = Double.parseDouble(discountValueRaw);
            int catId = (catIdRaw != null && !catIdRaw.isEmpty()) ? Integer.parseInt(catIdRaw) : 0;
            LocalDateTime start = LocalDate.parse(startDateRaw).atStartOfDay();
            LocalDateTime end = LocalDate.parse(endDateRaw).atTime(23, 59, 59);

            // 4. Tạo Model
            Discounts d = new Discounts();
            d.setName(name);
            d.setTypeDiscount(type);
            d.setDiscount(value);
            d.setDescription(desc);
            d.setStartDate(start);
            d.setEndDate(end);

            // 5. Lưu Database
            int newDiscountId = discountService.insertDiscount(d);

            if (newDiscountId > 0) {
                if ("category".equals(scope) && catId > 0) {
                    productService.applyDiscountToCategory(catId, newDiscountId);
                } else if ("all".equals(scope)) {
                    productService.applyDiscountToAll(newDiscountId);
                }
                response.getWriter().write("{\"status\":\"success\"}");
            } else {
                response.getWriter().write("{\"status\":\"error\", \"message\":\"Lỗi Database: Không thể lưu Discount!\"}");
            }

        } catch (Exception e) {
            e.printStackTrace(); // In lỗi chi tiết ra console server để bạn dễ theo dõi
            response.setStatus(500);
            response.getWriter().write("{\"status\":\"error\", \"message\":\"Server Error: " + e.getMessage() + "\"}");
        }
    }
}