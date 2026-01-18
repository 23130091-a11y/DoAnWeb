package com.webgiadung.doanweb.controller;

import com.webgiadung.doanweb.dao.ProductDao;
import com.webgiadung.doanweb.model.Product;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchServlet", value = "/search-product")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String keyword = request.getParameter("keyword");

        if (keyword != null) {
            keyword = keyword.trim();
        }

        if (keyword == null || keyword.isEmpty()) {
            request.setAttribute("message", "Vui lòng nhập từ khóa tìm kiếm");
            request.getRequestDispatcher("/search.jsp").forward(request, response);
            return;
        }

        if (keyword.length() < 2) {
            request.setAttribute("message", "Từ khóa tìm kiếm quá ngắn");
            request.getRequestDispatcher("/search.jsp").forward(request, response);
            return;
        }

        ProductDao productDao = new ProductDao();
        List<Product> products = productDao.searchByName(keyword);

        request.setAttribute("keyword", keyword);
        request.setAttribute("products", products);

        request.getRequestDispatcher("/search.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}