package com.webgiadung.doanweb.dao;

import com.webgiadung.doanweb.model.*;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class ProductDao extends BaseDao {

    // Lấy danh sách sản phẩm cơ bản (không load phụ để nhanh)
    public List<Product> getListProduct() {
        return get().withHandle(h ->
                h.createQuery("""
                    SELECT
                        id,
                        name,
                        image,
                        price_first AS firstPrice,
                        price_total AS totalPrice,
                        discounts_id AS discountsId,
                        categories_id AS categoriesId,
                        brands_id AS brandsId,
                        keywords_id AS keywordsId,
                        post,
                        quantity,
                        quantity_saled AS quantitySaled,
                        created_at AS createdAt,
                        updated_at AS updatedAt
                    FROM products
                    WHERE post = 1
                """)
                        .mapToBean(Product.class)
                        .list()
        );
    }

    // Lấy chi tiết 1 sản phẩm kèm các bảng phụ
    public Product getProduct(int id) {
        return get().withHandle(h -> {
            Product product = h.createQuery("""
                    SELECT
                        id,
                        name,
                        image,
                        price_first AS firstPrice,
                        price_total AS totalPrice,
                        discounts_id AS discountsId,
                        categories_id AS categoriesId,
                        brands_id AS brandsId,
                        keywords_id AS keywordsId,
                        post,
                        quantity,
                        quantity_saled AS quantitySaled,
                        created_at AS createdAt,
                        updated_at AS updatedAt
                    FROM products
                    WHERE id = :id
                """)
                    .bind("id", id)
                    .mapToBean(Product.class)
                    .findOne()
                    .orElse(null);

            if (product != null) {
                // Load attributes (thông số kỹ thuật)
                List<ProductAttribute> attributes = h.createQuery("""
                        SELECT *
                        FROM product_attributes
                        WHERE product_id = :id
                    """)
                        .bind("id", id)
                        .mapToBean(ProductAttribute.class)
                        .list();
                product.setAttributes(attributes);

                // Load options (tùy chọn sản phẩm)
                List<ProductOption> options = h.createQuery("""
                        SELECT *
                        FROM product_options
                        WHERE product_id = :id
                    """)
                        .bind("id", id)
                        .mapToBean(ProductOption.class)
                        .list();
                product.setOptions(options);

                // Load images phụ
                List<ProductImage> images = h.createQuery("""
                        SELECT *
                        FROM product_images
                        WHERE product_id = :id
                    """)
                        .bind("id", id)
                        .mapToBean(ProductImage.class)
                        .list();
                product.setImages(images);

                // Load đánh giá (reviews)
                List<ProductReview> reviews = h.createQuery("""
                        SELECT *
                        FROM product_reviews
                        WHERE product_id = :id
                    """)
                        .bind("id", id)
                        .mapToBean(ProductReview.class)
                        .list();
                product.setReviews(reviews);
            }

            return product;
        });
    }
}
