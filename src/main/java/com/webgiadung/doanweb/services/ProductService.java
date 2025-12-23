package com.webgiadung.doanweb.services;

import com.webgiadung.doanweb.dao.ProductDao;
import com.webgiadung.doanweb.model.Product;

import java.util.List;

public class ProductService {
    ProductDao pdao = new ProductDao();

    public List<Product> getListProduct(){
        return pdao.getListProduct();
    }

    public Product getProduct(int id){
        return pdao.getProduct(id);
    }
}
