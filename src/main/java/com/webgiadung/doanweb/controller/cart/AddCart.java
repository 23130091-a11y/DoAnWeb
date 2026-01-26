package com.webgiadung.doanweb.controller.cart;

import com.webgiadung.doanweb.dao.CartDao;
import com.webgiadung.doanweb.dao.CartItemDao;
import com.webgiadung.doanweb.model.Cart;
import com.webgiadung.doanweb.model.Product;
import com.webgiadung.doanweb.model.User;
import com.webgiadung.doanweb.services.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AddCart", value = "/add-cart")
public class AddCart extends HttpServlet {

    private boolean isAjax(HttpServletRequest req) {
        String x = req.getHeader("X-Requested-With");
        return "XMLHttpRequest".equalsIgnoreCase(x) || "1".equals(req.getParameter("ajax"));
    }

    private void writeJson(HttpServletResponse resp, int status, String json) throws IOException {
        resp.setStatus(status);
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter out = resp.getWriter();
        out.print(json);
        out.flush();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        boolean ajax = isAjax(request);

        // 1) check login
        User user = (User) session.getAttribute("user");
        if (user == null) {
            if (ajax) {
                writeJson(response, HttpServletResponse.SC_UNAUTHORIZED, "{\"status\":\"unauthorized\"}");
            } else {
                response.sendRedirect(request.getContextPath() + "/login");
            }
            return;
        }

        // 2) validate params
        int productId;
        int quantity = 1;

        try {
            productId = Integer.parseInt(request.getParameter("productId"));
        } catch (Exception e) {
            if (ajax) writeJson(response, HttpServletResponse.SC_BAD_REQUEST, "{\"status\":\"error\",\"message\":\"Invalid productId\"}");
            else response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid productId");
            return;
        }

        try {
            quantity = Integer.parseInt(request.getParameter("quantity"));
        } catch (Exception ignored) { }
        if (quantity <= 0) quantity = 1;

        // 3) get/create cart in session
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) cart = new Cart();

        // 4) get product
        ProductService productService = new ProductService();
        Product product = productService.getProduct(productId);
        if (product == null) {
            if (ajax) writeJson(response, HttpServletResponse.SC_NOT_FOUND, "{\"status\":\"error\",\"message\":\"Product not found\"}");
            else response.sendError(HttpServletResponse.SC_NOT_FOUND, "Product not found");
            return;
        }

        // 5) add to session cart
        cart.addItem(product, quantity);
        session.setAttribute("cart", cart);

        // 6) save to DB
        CartDao cartDao = new CartDao();
        CartItemDao itemDao = new CartItemDao();
        int cartId = cartDao.getOrCreateCartId(user.getId());
        itemDao.addOrInc(cartId, productId, quantity);
        session.setAttribute("CART_ID", cartId);

        // 7) response
        if (ajax) {
            writeJson(response, HttpServletResponse.SC_OK,
                    "{\"status\":\"success\",\"cartQty\":" + cart.getTotalQuantity() + "}"
            );
        } else {
            // yêu cầu: bấm thêm vào giỏ => nhảy qua giỏ liền
            response.sendRedirect(request.getContextPath() + "/cart");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
