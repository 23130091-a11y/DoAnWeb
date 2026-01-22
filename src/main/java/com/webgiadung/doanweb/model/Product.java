package com.webgiadung.doanweb.model;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class Product implements Serializable {
    private int id;
    private String name;
    private String image;         // Lưu đường dẫn ảnh chính
    private double firstPrice;    // Giá gốc ban đầu
    private int discountsId;  // Khóa ngoại liên kết bảng giảm giá
    private double totalPrice;    // Giá sau khi đã tính giảm giá
    private int categoriesId; // Khóa ngoại liên kết danh mục
    private int brandsId;     // Khóa ngoại liên kết thương hiệu
    private int keywordsId;   // Khóa ngoại liên kết từ khóa tìm kiếm
    private int post;         // Trạng thái hiển thị (ví dụ: 0: Ẩn, 1: Hiện)
    private int quantity;     // Số lượng trong kho
    private int quantitySaled;// Số lượng đã bán
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    // Liên kết các bảng phụ
    private List<ProductAttribute> attributes;  // Thông số động
    private List<ProductOption> options;        // Tùy chọn
    private List<ProductImage> images;          // Ảnh phụ
    private List<ProductReview> reviews;        // Đánh giá

    // rating tính sẵn từ SQL (dùng cho trang list)
    private Double ratingAvg;

    public Double getRatingAvg() {
        return ratingAvg;
    }

    public void setRatingAvg(Double ratingAvg) {
        this.ratingAvg = ratingAvg;
    }

    // ===== Khuyến mãi (dùng cho trang list) =====
    private Double discountPercent;   // 25
    private String discountType;      // percentage | fixed

    public Double getDiscountPercent() {
        return discountPercent;
    }

    public void setDiscountPercent(Double discountPercent) {
        this.discountPercent = discountPercent;
    }

    public String getDiscountType() {
        return discountType;
    }

    public void setDiscountType(String discountType) {
        this.discountType = discountType;
    }

    public double getRating() {
        if (reviews == null || reviews.isEmpty()) return 0.0;

        double avg = reviews.stream()
                .mapToDouble(ProductReview::getRating)
                .average()
                .orElse(0.0);

        return Math.round(avg * 10.0) / 10.0; // làm tròn 1 chữ số
    }

    public int getRatingInt() {
        return (int) Math.round(getRating()); // làm tròn để hiển thị sao
    }

    public Product() {
    }

    public Product(int id, String name, String image, double firstPrice, double totalPrice, int discountsId, int categoriesId, int brandsId, int keywordsId, int post, int quantity, int quantitySaled, LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.firstPrice = firstPrice;
        this.totalPrice = totalPrice;
        this.discountsId = discountsId;
        this.categoriesId = categoriesId;
        this.brandsId = brandsId;
        this.keywordsId = keywordsId;
        this.post = post;
        this.quantity = quantity;
        this.quantitySaled = quantitySaled;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.attributes = new ArrayList<>();
        this.options = new ArrayList<>();
        this.images = new ArrayList<>();
        this.reviews = new ArrayList<>();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getDiscountsId() {
        return discountsId;
    }

    public void setDiscountsId(int discountsId) {
        this.discountsId = discountsId;
    }

    public double getFirstPrice() {
        return firstPrice;
    }

    public void setFirstPrice(double firstPrice) {
        this.firstPrice = firstPrice;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getCategoriesId() {
        return categoriesId;
    }

    public void setCategoriesId(int categoriesId) {
        this.categoriesId = categoriesId;
    }

    public int getBrandsId() {
        return brandsId;
    }

    public void setBrandsId(int brandsId) {
        this.brandsId = brandsId;
    }

    public int getKeywordsId() {
        return keywordsId;
    }

    public void setKeywordsId(int keywordsId) {
        this.keywordsId = keywordsId;
    }

    public int getPost() {
        return post;
    }

    public void setPost(int post) {
        this.post = post;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getQuantitySaled() {
        return quantitySaled;
    }

    public void setQuantitySaled(int quantitySaled) {
        this.quantitySaled = quantitySaled;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(LocalDateTime updatedAt) {
        this.updatedAt = updatedAt;
    }

    public List<ProductAttribute> getAttributes() {
        return attributes;
    }

    public void setAttributes(List<ProductAttribute> attributes) {
        this.attributes = attributes;
    }

    public List<ProductOption> getOptions() {
        return options;
    }

    public void setOptions(List<ProductOption> options) {
        this.options = options;
    }

    public List<ProductImage> getImages() {
        return images;
    }

    public void setImages(List<ProductImage> images) {
        this.images = images;
    }

    public List<ProductReview> getReviews() {
        return reviews;
    }

    public void setReviews(List<ProductReview> reviews) {
        this.reviews = reviews;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", image='" + image + '\'' +
                ", firstPrice=" + firstPrice +
                ", discountsId=" + discountsId +
                ", totalPrice=" + totalPrice +
                ", categoriesId=" + categoriesId +
                ", brandsId=" + brandsId +
                ", keywordsId=" + keywordsId +
                ", post=" + post +
                ", quantity=" + quantity +
                ", quantitySaled=" + quantitySaled +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                '}';
    }
}
