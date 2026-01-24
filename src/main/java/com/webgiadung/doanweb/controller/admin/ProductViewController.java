package com.webgiadung.doanweb.controller.admin;

import com.webgiadung.doanweb.model.Product;
import com.webgiadung.doanweb.model.ProductDescriptions;
import com.webgiadung.doanweb.model.ProductDetails;
import com.webgiadung.doanweb.services.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.StringJoiner;

@WebServlet("/api/product-detail")
public class ProductViewController extends HttpServlet {

    private final ProductService productService = new ProductService();
    // Định dạng ngày tháng (thêm giờ phút để hiển thị chi tiết hơn nếu cần)
    private final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        PrintWriter out = response.getWriter();
        String idParam = request.getParameter("id");

        try {
            if (idParam != null && !idParam.isEmpty()) {
                int id = Integer.parseInt(idParam);

                // 1. Lấy dữ liệu đầy đủ
                Product p = productService.getProductFullInfo(id);

                if (p != null) {
                    // Xử lý chuỗi an toàn
                    String name = escapeJson(p.getName());
                    String image = escapeJson(p.getImage());
                    String brandName = (p.getBrandName() != null) ? escapeJson(p.getBrandName()) : "Chưa cập nhật";
                    String keywordName = (p.getKeywordName() != null) ? escapeJson(p.getKeywordName()) : "Chưa cập nhật";

                    // Xử lý ngày tháng (Tránh NullPointerException)
                    String createdAt = (p.getCreatedAt() != null) ? p.getCreatedAt().format(formatter) : "";
                    String updatedAt = (p.getUpdatedAt() != null) ? p.getUpdatedAt().format(formatter) : "";

                    // Tính % giảm giá
                    int discountPercent = 0;
                    if (p.getFirstPrice() > 0 && p.getFirstPrice() > p.getTotalPrice()) {
                        discountPercent = (int) Math.round(((p.getFirstPrice() - p.getTotalPrice()) / p.getFirstPrice()) * 100);
                    }

                    // --- BẮT ĐẦU TẠO CHUỖI JSON ---
                    StringBuilder json = new StringBuilder();
                    json.append("{");

                    // Các trường cơ bản
                    json.append("\"id\": ").append(p.getId()).append(",");
                    json.append("\"name\": \"").append(name).append("\",");
                    json.append("\"image\": \"").append(image).append("\",");

                    // --- [MỚI THÊM] ID Brand & Keyword để JS Select box hoạt động ---
                    // Lưu ý: Kiểm tra file Product.java xem getter là getBrandsId hay getBrandId
                    json.append("\"brandId\": ").append(p.getBrandsId()).append(",");
                    json.append("\"keywordId\": ").append(p.getKeywordsId()).append(",");

                    json.append("\"firstPrice\": ").append((long)p.getFirstPrice()).append(","); // Ép kiểu long để bỏ số thập phân .0
                    json.append("\"price\": ").append((long)p.getTotalPrice()).append(",");
                    json.append("\"discountPercent\": ").append(discountPercent).append(",");
                    json.append("\"quantity\": ").append(p.getQuantity()).append(",");
                    json.append("\"quantitySaled\": ").append(p.getQuantitySaled()).append(",");
                    json.append("\"post\": ").append(p.getPost()).append(",");

                    json.append("\"brandName\": \"").append(brandName).append("\",");
                    json.append("\"keywordName\": \"").append(keywordName).append("\",");

                    json.append("\"createdAt\": \"").append(createdAt).append("\",");
                    json.append("\"updatedAt\": \"").append(updatedAt).append("\",");

                    // 2. Xử lý Descriptions (Dùng nối chuỗi thay vì String.format để tránh lỗi ký tự %)
                    json.append("\"descriptions\": [");
                    List<ProductDescriptions> descList = p.getDescriptionsList();
                    if (descList != null && !descList.isEmpty()) {
                        StringJoiner sjDesc = new StringJoiner(",");
                        for (ProductDescriptions d : descList) {
                            String dTitle = escapeJson(d.getTitle());
                            String dContent = escapeJson(d.getDescription());
                            // Nối chuỗi thủ công an toàn hơn String.format
                            sjDesc.add("{\"title\":\"" + dTitle + "\", \"description\":\"" + dContent + "\"}");
                        }
                        json.append(sjDesc.toString());
                    }
                    json.append("],");

                    // 3. Xử lý Details
                    json.append("\"details\": [");
                    List<ProductDetails> detailList = p.getDetailsList();
                    if (detailList != null && !detailList.isEmpty()) {
                        StringJoiner sjDetail = new StringJoiner(",");
                        for (ProductDetails d : detailList) {
                            String dtTitle = escapeJson(d.getTitle());
                            String dtContent = escapeJson(d.getDescription());
                            String dtImage = escapeJson(d.getImage());
                            sjDetail.add("{\"title\":\"" + dtTitle + "\", \"description\":\"" + dtContent + "\", \"image\":\"" + dtImage + "\"}");
                        }
                        json.append(sjDetail.toString());
                    }
                    json.append("]");

                    json.append("}");

                    out.print(json.toString());
                } else {
                    response.setStatus(HttpServletResponse.SC_NOT_FOUND);
                    out.print("{\"error\": \"Không tìm thấy sản phẩm\"}");
                }
            } else {
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                out.print("{\"error\": \"Thiếu ID sản phẩm\"}");
            }
        } catch (Exception e) {
            e.printStackTrace(); // Xem log lỗi ở console server
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            // Escape tin nhắn lỗi để tránh phá vỡ JSON trả về
            out.print("{\"error\": \"Lỗi Server: " + escapeJson(e.getMessage()) + "\"}");
        } finally {
            out.flush();
        }
    }

    // Hàm phụ trợ: Xử lý chuỗi JSON
    private String escapeJson(String input) {
        if (input == null) return "";
        return input.replace("\\", "\\\\")
                .replace("\"", "\\\"")
                .replace("\n", " ") // Thay xuống dòng bằng dấu cách để tránh lỗi JSON
                .replace("\r", "")
                .replace("\t", " ");
    }
}