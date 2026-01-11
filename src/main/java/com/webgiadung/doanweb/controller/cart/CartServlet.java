package com.webgiadung.doanweb.controller.cart;

import com.webgiadung.doanweb.model.Cart;
import com.webgiadung.doanweb.model.CartItem;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@WebServlet(name = "CartServlet", value = "/cart")
public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        if (cart != null) {
            Map<LocalDate, List<CartItem>> itemsByDate =
                    cart.getItems().stream()
                            .collect(Collectors.groupingBy(
                                    item -> item.getAddedAt().toLocalDate()
                            ));

            session.setAttribute("itemsByDate", itemsByDate);
            session.setAttribute("cart", cart);
        }

        request.getRequestDispatcher("/cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}