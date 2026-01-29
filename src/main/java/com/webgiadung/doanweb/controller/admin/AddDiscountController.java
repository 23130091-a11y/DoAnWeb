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
@MultipartConfig // Quan trọng để đọc được dữ liệu text từ FormData gửi lên
public class AddDiscountController extends HttpServlet {

    private final DiscountService discountService = new DiscountService();
    private final ProductService productService = new ProductService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        try {
            // 1. Lấy dữ liệu từ Request (khớp với 'name' trong thẻ input HTML)
            String name = request.getParameter("eventName");
            String discountValueRaw = request.getParameter("discountValue");
            String startDateRaw = request.getParameter("startDate");
            String endDateRaw = request.getParameter("endDate");
            String scope = request.getParameter("applyScope"); // "all" hoặc "category"
            String type = request.getParameter("discountType");
            String desc = request.getParameter("eventDesc");
            String catIdRaw = request.getParameter("applyCategories");

            // 2. Kiểm tra tính hợp lệ cơ bản
            if (name == null || name.isBlank() || discountValueRaw == null || startDateRaw == null || endDateRaw == null) {
                response.getWriter().write("{\"status\":\"error\", \"message\":\"Thiếu thông tin bắt buộc!\"}");
                return;
            }

            // 3. Xử lý Logic id_cate: Nếu 'all' thì lưu 0, nếu 'category' thì lưu ID danh mục
            int idCate = 0;
            if ("category".equals(scope)) {
                idCate = (catIdRaw != null && !catIdRaw.isEmpty()) ? Integer.parseInt(catIdRaw) : 0;
            }

            double value = Double.parseDouble(discountValueRaw);
            LocalDateTime start = LocalDate.parse(startDateRaw).atStartOfDay();
            LocalDateTime end = LocalDate.parse(endDateRaw).atTime(23, 59, 59);

            Discounts d = new Discounts();
            d.setName(name);
            d.setDiscount(value);
            d.setDescription(desc);
            d.setStartDate(start);
            d.setEndDate(end);

            d.setTypeDiscount("percentage".equals(type) ? "1" : "2");

            d.setId_cate(idCate);

            // 6. Lưu vào Database (Phương thức này trả về ID vừa tạo)
            int newDiscountId = discountService.insertDiscount(d);

            if (newDiscountId > 0) {
                // 7. Cập nhật giá sản phẩm ngay lập tức sau khi lưu thành công
                if ("category".equals(scope) && idCate > 0) {
                    productService.applyDiscountToCategory(idCate, newDiscountId);
                } else if ("all".equals(scope)) {
                    productService.applyDiscountToAll(newDiscountId);
                }

                response.getWriter().write("{\"status\":\"success\"}");
            } else {
                response.getWriter().write("{\"status\":\"error\", \"message\":\"Không thể lưu sự kiện vào Database\"}");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(500);
            response.getWriter().write("{\"status\":\"error\", \"message\":\"Lỗi hệ thống: " + e.getMessage() + "\"}");
        }
    }
}