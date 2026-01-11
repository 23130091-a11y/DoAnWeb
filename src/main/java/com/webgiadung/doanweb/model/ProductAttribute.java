package com.webgiadung.doanweb.model;

import org.jdbi.v3.core.mapper.reflect.ColumnName;

import java.io.Serializable;
import java.time.LocalDateTime;

public class ProductAttribute implements Serializable {
    private int id;
    @ColumnName("attr_name")
    private String attrName;       // Trọng lượng, Chất liệu, Công dụng...
    @ColumnName("attr_value")
    private String attrValue;      // Ví dụ: "1.8kg", "Kim loại", "Quạt làm mát"
    private int productId;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    public ProductAttribute(){}

    public ProductAttribute(int id, String name, String value, int productId, LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.id = id;
        this.attrName = name;
        this.attrValue = value;
        this.productId = productId;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAttrName() {
        return attrName;
    }

    public void setAttrName(String attrName) {
        this.attrName = attrName;
    }

    public String getAttrValue() {
        return attrValue;
    }

    public void setAttrValue(String attrValue) {
        this.attrValue = attrValue;
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

    @Override
    public String toString() {
        return "ProductAttribute{" +
                "id=" + id +
                ", name='" + attrName + '\'' +
                ", value='" + attrValue + '\'' +
                ", productId=" + productId +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                '}';
    }
}
