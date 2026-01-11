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
}
