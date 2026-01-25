package com.webgiadung.doanweb.controller.admin;

import com.webgiadung.doanweb.model.Discounts;
import com.webgiadung.doanweb.services.DiscountService;
import com.webgiadung.doanweb.services.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;

@WebServlet("/admin/add-discount")
public class AddDiscountController extends HttpServlet {

    private final DiscountService discountService = new DiscountService();
    private final ProductService productService = new ProductService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        try {
            // 1. Lấy dữ liệu và kiểm tra rỗng (Trim để tránh lỗi cách trắng)
            String name = request.getParameter("eventName");
            String discountValueRaw = request.getParameter("discountValue");
            String startDateRaw = request.getParameter("startDate");
            String endDateRaw = request.getParameter("endDate");
            String scope = request.getParameter("applyScope");
            String type = request.getParameter("discountType");
            String desc = request.getParameter("eventDesc");

            if (name == null || name.isBlank() || discountValueRaw == null || startDateRaw == null || endDateRaw == null) {
                response.setStatus(400); // Bad Request
                response.getWriter().write("{\"status\":\"error\", \"message\":\"Vui lòng điền đầy đủ các trường bắt buộc!\"}");
                return;
            }

            double value = Double.parseDouble(discountValueRaw);

            String catIdRaw = request.getParameter("applyCategories");
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

            // 5. Thực hiện lưu vào DB
            int newDiscountId = discountService.insertDiscount(d);

            if (newDiscountId > 0) {
                // Áp dụng giảm giá cho sản phẩm
                if ("category".equals(scope) && catId > 0) {
                    productService.applyDiscountToCategory(catId, newDiscountId);
                } else if ("all".equals(scope)) {
                    productService.applyDiscountToAll(newDiscountId);
                }

                response.getWriter().write("{\"status\":\"success\"}");
            } else {
                // Nếu insertDiscount trả về 0 hoặc -1
                response.getWriter().write("{\"status\":\"error\", \"message\":\"Database không trả về ID mới. Vui lòng kiểm tra lại hàm insert!\"}");
            }

        } catch (java.time.format.DateTimeParseException e) {
            response.setStatus(400);
            response.getWriter().write("{\"status\":\"error\", \"message\":\"Ngày tháng không đúng định dạng!\"}");
        } catch (NumberFormatException e) {
            response.setStatus(400);
            response.getWriter().write("{\"status\":\"error\", \"message\":\"Mức giảm giá phải là số!\"}");
        } catch (Exception e) {
            e.printStackTrace(); // Quan trọng: Xem lỗi ở Console của Server (Tomcat)
            response.setStatus(500);
            // Tránh trả về message quá chi tiết của hệ thống cho user, nhưng giúp bạn debug
            String errorMsg = e.getMessage() != null ? e.getMessage() : "Lỗi hệ thống không xác định";
            response.getWriter().write("{\"status\":\"error\", \"message\":\"Server Error: " + errorMsg.replace("\"", "'") + "\"}");
        }
    }
}