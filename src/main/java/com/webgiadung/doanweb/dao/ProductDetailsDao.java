package com.webgiadung.doanweb.dao;

import com.webgiadung.doanweb.model.ProductDetails;
import java.util.List;

public class ProductDetailsDao extends BaseDao {

    // Chuyển sang kiểu int để trả về ID vừa insert
    public int insert(ProductDetails detail) {
        return get().withHandle(h ->
                h.createUpdate(
                                "INSERT INTO products_detail (image, title, description, products_id, created_at, updated_at) " +
                                        "VALUES (:image, :title, :description, :productId, NOW(), NOW())"
                        )
                        .bindBean(detail) // Tự động map :image, :title, :description, :productId
                        .executeAndReturnGeneratedKeys("id")
                        .mapTo(Integer.class)
                        .one()
        );
    }

    // Các hàm khác giữ nguyên
    public List<ProductDetails> findByProductId(int productId) {
        return get().withHandle(h ->
                h.createQuery("SELECT * FROM product_details WHERE id = :id ORDER BY id ASC")
                        .bind("id", productId)
                        .mapToBean(ProductDetails.class)
                        .list()
        );
    }

    public void deleteByProductId(int productId) {
        get().useHandle(h ->
                h.createUpdate("DELETE FROM product_details WHERE product_id = :productId")
                        .bind("productId", productId)
                        .execute()
        );
    }
}