package com.webgiadung.doanweb.controller;

import com.webgiadung.doanweb.dao.CategoriesDao;
import com.webgiadung.doanweb.model.Categories;
import com.webgiadung.doanweb.model.Product;
import com.webgiadung.doanweb.services.CategoriesService;
import com.webgiadung.doanweb.services.ProductService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductController", value = "/product")
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductService pService = new ProductService();
        CategoriesService cService = new CategoriesService();
        int id = 0;
        try {
            id = Integer.parseInt(request.getParameter("id"));
        } catch (NumberFormatException e) {

        }
        Product p = pService.getProduct(id);

        // Lấy danh mục sản phẩm
        Categories category = cService.getCategory(p.getCategoriesId());

        // Lấy các parent category
        List<Categories> parentCategories = cService.getParentChain(p.getCategoriesId());

        request.setAttribute("product", p);
        request.setAttribute("category", category);
        request.setAttribute("parentCategories", parentCategories);
        request.getRequestDispatcher("/product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}