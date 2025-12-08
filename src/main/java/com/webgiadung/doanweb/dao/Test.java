package com.webgiadung.doanweb.dao;

import com.webgiadung.doanweb.model.Product;
import com.webgiadung.doanweb.services.ProductService;

import java.util.List;

public class Test {
    public static void main(String[] args) {
            // Tạo instance service
            ProductService ps = new ProductService();

            // Lấy danh sách sản phẩm
            List<Product> products = ps.getListProduct();

            // In ra console
            for (Product p : products) {
                System.out.println(p.toString());

            }
    }
}
