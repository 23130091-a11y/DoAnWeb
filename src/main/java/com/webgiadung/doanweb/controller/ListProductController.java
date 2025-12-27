package com.webgiadung.doanweb.controller;

import com.webgiadung.doanweb.model.Product;
import com.webgiadung.doanweb.model.Slide;
import com.webgiadung.doanweb.services.ProductService;
import com.webgiadung.doanweb.services.SlideService;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "listProduct", value = "/list-product")
public class ListProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductService productService = new ProductService();
        List<Product> list = productService.getListProduct();

        SlideService slideService = new SlideService();
        List<Slide> slides = slideService.getListSlide();

        request.setAttribute("list", list);
        request.setAttribute("slides", slides);

        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}

