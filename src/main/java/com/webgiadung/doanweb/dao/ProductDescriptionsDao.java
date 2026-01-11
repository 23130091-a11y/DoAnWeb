package com.webgiadung.doanweb.dao;

import com.webgiadung.doanweb.model.ProductDescriptions;
import java.util.List;

public class ProductDescriptionsDao extends BaseDao {

    // Thay đổi từ void sang int để trả về ID vừa sinh ra
    public int insert(ProductDescriptions desc) {
        return get().withHandle(h ->
                h.createUpdate(

                                "INSERT INTO products_description (title, description, products_id, created_at, updated_at) " +
                                        "VALUES (:title, :description, :productId, NOW(), NOW())"
                        )
                        .bindBean(desc)
                        .executeAndReturnGeneratedKeys("id")
                        .mapTo(Integer.class)
                        .one()
        );
    }

    public List<ProductDescriptions> findByProductId(int productId) {
        return get().withHandle(h ->
                h.createQuery("SELECT * FROM product_descriptions WHERE product_id = :productId")
                        .bind("productId", productId)
                        .mapToBean(ProductDescriptions.class)
                        .list()
        );
    }
}