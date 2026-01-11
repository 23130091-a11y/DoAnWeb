package com.webgiadung.doanweb.model;

import org.jdbi.v3.core.mapper.reflect.ColumnName;

import java.io.Serializable;
import java.time.LocalDateTime;

public class ProductOption implements Serializable {
    private int id;
    @ColumnName("option_name")
    private String optionName;        // Ví dụ: "Loại", "Màu", "Dung tích"
    @ColumnName("option_value")
    private String optionValue;       // Ví dụ: "QUẠT + 1 PIN + 1 SẠC"
    private int productId;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    public ProductOption() {}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOptionName() {
        return optionName;
    }

    public void setOptionName(String optionName) {
        this.optionName = optionName;
    }

    public String getOptionValue() {
        return optionValue;
    }

    public void setOptionValue(String optionValue) {
        this.optionValue = optionValue;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
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

    public ProductOption(int id, String name, String value, int productId, LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.id = id;
        this.optionName = name;
        this.optionValue = value;
        this.productId = productId;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    @Override
    public String toString() {
        return "ProductOption{" +
                "id=" + id +
                ", name='" + optionName + '\'' +
                ", value='" + optionValue + '\'' +
                ", productId=" + productId +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                '}';
    }
}
