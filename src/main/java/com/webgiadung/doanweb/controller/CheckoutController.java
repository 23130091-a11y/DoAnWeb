package com.webgiadung.doanweb.controller;

import com.webgiadung.doanweb.dao.OrderDao;
import com.webgiadung.doanweb.model.Cart;
import com.webgiadung.doanweb.model.User;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/checkout")
public class CheckoutController extends HttpServlet {

    private final OrderDao orderDao = new OrderDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null || cart.getItems().isEmpty()) {
            resp.sendRedirect(req.getContextPath() + "/cart.jsp");
            return;
        }

        req.setAttribute("cart", cart);
        req.setAttribute("items", cart.getItems());
        req.setAttribute("totalQuantity", cart.getTotalQuantity());
        req.setAttribute("totalPrice", cart.getTotalPrice());
        req.getRequestDispatcher("/checkout.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();


        User user = (User) session.getAttribute("user");
        if (user == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null || cart.getItems().isEmpty()) {
            resp.sendRedirect(req.getContextPath() + "/cart.jsp");
            return;
        }


        int shipFee = 25000;

        try {
            orderDao.placeOrder(user, cart, shipFee);

            session.removeAttribute("cart");

            resp.sendRedirect(req.getContextPath() + "/account?tab=orders#orders-all");
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect(req.getContextPath() + "/checkout?error=1");
        }
        System.out.println(">>> CHECKOUT POST HIT");
        System.out.println(">>> URI=" + req.getRequestURI());
    }
}