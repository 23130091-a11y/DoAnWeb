package com.webgiadung.doanweb.controller;

import com.webgiadung.doanweb.dao.ProductDao;
import com.webgiadung.doanweb.model.Product;
import com.webgiadung.doanweb.services.ProductService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchServlet", value = "/search-product")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String keyword = request.getParameter("keyword");
        String[] brands = request.getParameterValues("brands");
        String[] priceRanges = request.getParameterValues("priceRanges");

        if (brands == null) brands = request.getParameterValues("brands[]");
        if (priceRanges == null) priceRanges = request.getParameterValues("priceRanges[]");

        if (keyword != null) {
            keyword = keyword.trim();
        }

        boolean hasKeyword = (keyword != null && !keyword.isEmpty());
        boolean hasFilter = (brands != null && brands.length > 0) || (priceRanges != null && priceRanges.length > 0);

        if (!hasKeyword && !hasFilter) {
            request.setAttribute("message", "Vui lòng nhập từ khóa tìm kiếm hoặc chọn bộ lọc");
            request.getRequestDispatcher("/search.jsp").forward(request, response);
            return;
        }

        if (hasKeyword && keyword.length() < 2) {
            request.setAttribute("message", "Từ khóa tìm kiếm quá ngắn");
            request.getRequestDispatcher("/search.jsp").forward(request, response);
            return;
        }

        HttpSession session = request.getSession();
        List<String> searchHistory = (List<String>) session.getAttribute("searchHistory");

        if (searchHistory == null) {
            searchHistory = new ArrayList<>();
        }

        searchHistory.remove(keyword);
        searchHistory.add(0, keyword);

        if (searchHistory.size() > 5) {
            searchHistory = searchHistory.subList(0, 5);
        }
        session.setAttribute("searchHistory", searchHistory);

        ProductDao productDao = new ProductDao();
        List<Product> products = productDao.searchWithFilters(keyword, brands, priceRanges);

        request.setAttribute("keyword", keyword);
        request.setAttribute("products", products);

        request.setAttribute("selectedBrands", brands);
        request.setAttribute("selectedPrices", priceRanges);

        request.getRequestDispatcher("/search.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}