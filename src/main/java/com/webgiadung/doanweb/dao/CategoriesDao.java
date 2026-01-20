package com.webgiadung.doanweb.dao;

import com.webgiadung.doanweb.model.Categories;

import java.util.List;

public class CategoriesDao extends BaseDao {
    // Lấy tất cả danh mục
    public List<Categories> getAllCategories() {
        return get().withHandle(h ->
                h.createQuery("""
                SELECT *
                FROM categories
            """)
                        .mapToBean(Categories.class)
                        .list()
        );
    }

    // Lấy category theo id
    public Categories getCategory(int id) {
        return get().withHandle(h ->
                h.createQuery("""
                SELECT *
                FROM categories
                WHERE id = :id
            """)
                        .bind("id", id)
                        .mapToBean(Categories.class)
                        .findOne()
                        .orElse(null)
        );
    }

    // Lấy chuỗi danh mục cha đầy đủ
    public List<Categories> getParentChain(int categoryId) {
        List<Categories> chain = new java.util.ArrayList<>();
        Categories current = getCategory(categoryId);
        while (current != null && current.getParentId() != 0) {
            Categories parent = getCategory(current.getParentId());
            if(parent != null) chain.add(0, parent); // thêm đầu danh sách
            current = parent;
        }
        return chain;
    }
    public Categories findByName(String name) {
        // Giả sử bạn dùng JDBI giống như ProductDao
        return get().withHandle(h -> {
            return h.createQuery("SELECT * FROM categories WHERE name = :name")
                    .bind("name", name)
                    .mapToBean(Categories.class)
                    .stream()
                    .findFirst()
                    .orElse(null);
        });
    }
    public int insertCategory(String name, String description) {
        try {
            return get().withHandle(h ->
                    h.createUpdate("""
                    INSERT INTO categories (name, description,  parent_id, created_at, updated_at) 
                    VALUES (:name, :description,  0, NOW(), NOW())
                """)
                            .bind("name", name)
                            .bind("description", description)
                            .executeAndReturnGeneratedKeys("id")
                            .mapTo(Integer.class)
                            .one() // Dùng .one() giống bên Brand (sẽ ném lỗi nếu không tạo được, để catch bắt)
            );
        } catch (Exception e) {
            e.printStackTrace(); // In lỗi ra console để debug
            return -1; // Trả về -1 nếu lỗi giống bên Brand
        }
    }
}
