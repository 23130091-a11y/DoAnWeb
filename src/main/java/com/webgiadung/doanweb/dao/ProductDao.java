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
    public int insert(Product p) {
        return get().withHandle(h -> {
            return h.createUpdate(
                            "INSERT INTO products (name, image, price_total, " +
                                    "brands_id, keywords_id, categories_id, post, quantity, created_at, updated_at) " +
                                    "VALUES (:name, :image, :totalPrice, " +
                                    ":brandsId, :keywordsId, :categoriesId, :post, :quantity, NOW(), NOW())"
                    )
                    .bindBean(p)
                    .executeAndReturnGeneratedKeys("id")
                    .mapTo(Integer.class)
                    .one();
        });
    }

    public List<Product> searchByName(String keyword) {
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
            AND name LIKE :keyword
        """)
                        .bind("keyword", "%" + keyword + "%")
                        .mapToBean(Product.class)
                        .list()
        );
    }

    private static final String BASE_SELECT = """
    SELECT
        p.id,
        p.name,
        p.image,
        p.price_first AS firstPrice,
        p.price_total AS totalPrice,
        p.discounts_id AS discountsId,
        p.categories_id AS categoriesId,
        p.brands_id AS brandsId,
        p.keywords_id AS keywordsId,
        p.post,
        p.quantity,
        p.quantity_saled AS quantitySaled,
        p.created_at AS createdAt,
        p.updated_at AS updatedAt,
        IFNULL(ROUND(AVG(pr.rating), 1), 0.0) AS ratingAvg
    FROM products p
    LEFT JOIN product_reviews pr ON p.id = pr.product_id
    WHERE p.post = 1
    GROUP BY
        p.id, p.name, p.image, p.price_first, p.price_total,
        p.discounts_id, p.categories_id, p.brands_id,
        p.keywords_id, p.post, p.quantity,
        p.quantity_saled, p.created_at, p.updated_at
""";

    private static final String PROMOTION_SELECT = """
    SELECT
        p.id,
        p.name,
        p.image,
        p.price_first AS firstPrice,

        -- Giá sau giảm
        CASE
            WHEN d.type_discount = 'percentage'
                THEN ROUND(p.price_first * (1 - d.discount / 100), 0)
            WHEN d.type_discount = 'fixed'
                THEN GREATEST(p.price_first - d.discount, 0)
            ELSE
                p.price_first
        END AS totalPrice,

        p.discounts_id AS discountsId,
        d.discount AS discountPercent,
        d.type_discount AS discountType,

        IFNULL(ROUND(AVG(pr.rating), 1), 0.0) AS ratingAvg

    FROM products p
    JOIN discounts d ON p.discounts_id = d.id
    LEFT JOIN product_reviews pr ON p.id = pr.product_id

    WHERE p.post = 1
      AND NOW() BETWEEN d.start_date AND d.end_date

    GROUP BY
        p.id,
        p.name,
        p.image,
        p.price_first,
        p.discounts_id,
        d.discount,
        d.type_discount
""";

    private static final String SUGGESTED_SELECT = """
    SELECT
        p.id,
        p.name,
        p.image,
        p.price_first AS firstPrice,
        p.price_total AS totalPrice,
        p.discounts_id AS discountsId,
        p.quantity_saled AS quantitySaled,
        ROUND(AVG(pr.rating), 1) AS ratingAvg

    FROM products p
    JOIN product_reviews pr ON p.id = pr.product_id

    WHERE p.post = 1
      AND p.quantity_saled > 0

    GROUP BY p.id

    HAVING AVG(pr.rating) >= 4.0

    ORDER BY p.quantity_saled DESC, ratingAvg DESC

    LIMIT 8
""";

    private static final String LIMITED_DISCOUNT_SELECT = """
    SELECT
        p.id,
        p.name,
        p.image,
        p.price_first AS firstPrice,

        -- Giá sau giảm
        CASE
            WHEN d.type_discount = 'percentage'
                THEN ROUND(p.price_first * (1 - d.discount / 100), 0)
            WHEN d.type_discount = 'fixed'
                THEN GREATEST(p.price_first - d.discount, 0)
            ELSE
                p.price_first
        END AS totalPrice,

        p.quantity,
        p.quantity_saled AS quantitySaled,

        d.discount AS discountPercent,
        d.type_discount AS discountType,

        IFNULL(ROUND(AVG(pr.rating), 1), 0.0) AS ratingAvg

    FROM products p
    JOIN discounts d ON p.discounts_id = d.id
    LEFT JOIN product_reviews pr ON p.id = pr.product_id

    WHERE p.post = 1
      AND p.quantity > 0
      AND p.quantity <= 5
      AND NOW() BETWEEN d.start_date AND d.end_date

    GROUP BY
        p.id,
        p.name,
        p.image,
        p.price_first,
        p.quantity,
        p.quantity_saled,
        d.discount,
        d.type_discount

    ORDER BY p.quantity ASC, p.quantity_saled DESC

    LIMIT 8
""";

    public List<Product> getFeaturedProducts() {
        return get().withHandle(h ->
                h.createQuery(BASE_SELECT + """
            ORDER BY p.quantity_saled DESC
            LIMIT 8
        """)
                        .mapToBean(Product.class)
                        .list()
        );
    }

    public List<Product> getPromotionProducts() {
        return get().withHandle(h ->
                h.createQuery(PROMOTION_SELECT + """
                ORDER BY p.created_at DESC
                LIMIT 8
            """)
                        .mapToBean(Product.class)
                        .list()
        );
    }

    public List<Product> getSuggestedProducts() {
        return get().withHandle(h ->
                h.createQuery(SUGGESTED_SELECT)
                        .mapToBean(Product.class)
                        .list()
        );
    }

    public List<Product> getLimitedProducts() {
        return get().withHandle(h ->
                h.createQuery(LIMITED_DISCOUNT_SELECT)
                        .mapToBean(Product.class)
                        .list()
        );
    }

    public List<Product> getNewProducts() {
        return get().withHandle(h ->
                h.createQuery(BASE_SELECT + """
            ORDER BY p.created_at DESC
            LIMIT 8
        """)
                        .mapToBean(Product.class)
                        .list()
        );
    }
}
