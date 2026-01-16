package com.webgiadung.doanweb.services;

import com.webgiadung.doanweb.dao.CategoriesDao;
import com.webgiadung.doanweb.model.Categories;

import java.util.List;

public class CategoriesService {
    CategoriesDao categoriesDao = new CategoriesDao();

    public Categories getCategory(int id) {
        return categoriesDao.getCategory(id);
    }

    public List<Categories> getAllCategories() {
        return categoriesDao.getAllCategories();
    }

    public List<Categories> getParentChain(int categoriesId) {
        return categoriesDao.getParentChain(categoriesId);
    }
    public int insertCategory(String name, String description) {
        // BƯỚC 1: Kiểm tra trùng tên
        Categories exist = categoriesDao.findByName(name);

        if (exist != null) {
            return 0; // Trả về 0 để báo hiệu là tên đã tồn tại (hoặc ném Exception tùy bạn)
        }

        // BƯỚC 2: Nếu chưa tồn tại thì mới thêm
        return categoriesDao.insertCategory(name, description);
    }
}
