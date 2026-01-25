package com.webgiadung.doanweb.controller;

import com.webgiadung.doanweb.dao.CategoriesDao;
import com.webgiadung.doanweb.model.Categories;
import com.webgiadung.doanweb.model.Product;
import com.webgiadung.doanweb.services.CategoriesService;
import com.webgiadung.doanweb.services.ProductService;
import com.webgiadung.doanweb.utils.CookieUtils;
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
        Product p = pService.getProductFull(id);

        if (p != null) {
            CookieUtils.addIdToCookie(request, response, "viewed_products", id);

            Categories category = cService.getCategory(p.getCategoriesId());

            List<Categories> parentCategories = cService.getCategoriesByParentId(p.getCategoriesId());

            request.setAttribute("product", p);
            request.setAttribute("category", category);
            request.setAttribute("parentCategories", parentCategories);
            request.getRequestDispatcher("/product.jsp").forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}