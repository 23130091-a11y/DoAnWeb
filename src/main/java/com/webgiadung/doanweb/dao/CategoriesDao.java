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
                WHERE post = 1
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
}
