package com.webgiadung.doanweb.controller;

import com.webgiadung.doanweb.model.Product;
import com.webgiadung.doanweb.services.ProductService;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;
@WebServlet(name = "listProduct", value = "/listProduct")
public class ListProduct extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProductService ps= new ProductService();
        List<Product> list =ps.getListProduct();
        req.setAttribute("list",list);
        req.getRequestDispatcher("index.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}

