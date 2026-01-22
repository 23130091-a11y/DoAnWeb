package com.webgiadung.doanweb.services;

import com.webgiadung.doanweb.dao.ProductDao;
import com.webgiadung.doanweb.dao.ProductDescriptionsDao;
import com.webgiadung.doanweb.dao.ProductDetailsDao;
import com.webgiadung.doanweb.model.Product;
import com.webgiadung.doanweb.model.ProductDescriptions;
import com.webgiadung.doanweb.model.ProductDetails;

import java.util.List;

public class ProductService {
    // Khởi tạo các đối tượng DAO để tương tác với cơ sở dữ liệu
    ProductDao pdao = new ProductDao();
    ProductDescriptionsDao descDao = new ProductDescriptionsDao();
    ProductDetailsDao detailDao = new ProductDetailsDao();

    // Lấy danh sách tất cả sản phẩm
    public List<Product> getListProduct() {
        return pdao.getListProduct();
    }

    // Lấy chi tiết một sản phẩm theo ID
    public Product getProduct(int id) {
        return pdao.getProduct(id);
    }

    // Thêm sản phẩm mới và trả về ID (Generated Key)
    public int addProduct(Product p) {
        return pdao.insert(p);
    }

    // Thêm mô tả ngắn cho sản phẩm
    public int addDescription(ProductDescriptions desc) {
        return descDao.insert(desc);
    }

    // Lấy danh sách các dòng mô tả của một sản phẩm nhất định
    public List<ProductDescriptions> getDescriptionsByProduct(int productId) {
        return descDao.findByProductId(productId);
    }

    // Thêm chi tiết sản phẩm (bao gồm ảnh chi tiết và nội dung)
    public int addProductDetail(ProductDetails detail) {
        return detailDao.insert(detail);
    }

    // Lấy danh sách các mục chi tiết của một sản phẩm nhất định
    public List<ProductDetails> getDetailsByProduct(int productId) {
        return detailDao.findByProductId(productId);
    }

    public List<Product> getFeaturedProducts() {
        return pdao.getFeaturedProducts();
    }

    public List<Product> getPromotionProducts() {
        return pdao.getPromotionProducts();
    }

    public List<Product> getSuggestedProducts() {
        return pdao.getSuggestedProducts();
    }

    public List<Product> getLimitedProducts() {
        return pdao.getLimitedProducts();
    }

    public List<Product> getNewProducts() {
        return pdao.getNewProducts();
    }
}
