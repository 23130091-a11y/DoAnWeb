package com.webgiadung.doanweb.controller;

import com.webgiadung.doanweb.dao.CartItemDao;
import com.webgiadung.doanweb.dao.OrderDao;
import com.webgiadung.doanweb.model.Cart;
import com.webgiadung.doanweb.model.CartItem;
import com.webgiadung.doanweb.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

@WebServlet("/checkout")
public class CheckoutController extends HttpServlet {

    private static final int SHIP_FEE = 25000;
    private final OrderDao orderDao = new OrderDao();

    private Cart buildSelectedCart(Cart fullCart, String idsParam) {
        if (idsParam == null || idsParam.isBlank()) return fullCart;

        Set<Integer> idSet = new HashSet<>();
        for (String p : idsParam.split(",")) {
            try {
                idSet.add(Integer.parseInt(p.trim()));
            } catch (Exception ignored) {}
        }

        Cart selected = new Cart();
        for (CartItem ci : fullCart.getItems()) {
            if (ci != null && ci.getProduct() != null && idSet.contains(ci.getProduct().getId())) {
                selected.addItem(ci.getProduct(), ci.getQuantity());
            }
        }
        return selected;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        Cart fullCart = (Cart) session.getAttribute("cart");
        if (fullCart == null) fullCart = new Cart();

        if (fullCart.getItems() == null || fullCart.getItems().isEmpty()) {
            resp.sendRedirect(req.getContextPath() + "/cart");
            return;
        }

        String idsParam = req.getParameter("ids");
        Cart orderCart = buildSelectedCart(fullCart, idsParam);

        req.setAttribute("items", orderCart.getItems());
        req.setAttribute("totalQuantity", orderCart.getTotalQuantity());
        req.setAttribute("totalPrice", orderCart.getTotalPrice());
        req.setAttribute("ship", SHIP_FEE);

        // để checkout.jsp nhét hidden input (giữ ids khi POST)
        if (idsParam != null && !idsParam.isBlank()) {
            req.setAttribute("ids", idsParam);
        }

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

        // ✅ chặn đặt hàng nếu chưa có địa chỉ
        if (user.getAddress() == null || user.getAddress().trim().isEmpty()) {
            resp.sendRedirect(req.getContextPath() + "/account?tab=info&return=checkout&need=address");
            return;
        }

        Cart fullCart = (Cart) session.getAttribute("cart");
        if (fullCart == null) fullCart = new Cart();

        if (fullCart.getItems() == null || fullCart.getItems().isEmpty()) {
            resp.sendRedirect(req.getContextPath() + "/cart");
            return;
        }

        String idsParam = req.getParameter("ids"); // lấy từ hidden input ở checkout.jsp
        Cart orderCart = buildSelectedCart(fullCart, idsParam);

        if (orderCart.getItems() == null || orderCart.getItems().isEmpty()) {
            resp.sendRedirect(req.getContextPath() + "/checkout?error=1");
            return;
        }

        try {
            orderDao.placeOrder(user, orderCart, SHIP_FEE);

            Integer cartId = (Integer) session.getAttribute("CART_ID");
            if (cartId != null) {
                CartItemDao itemDao = new CartItemDao();
                if (idsParam != null && !idsParam.isBlank()) {
                    for (String p : idsParam.split(",")) {
                        try {
                            int pid = Integer.parseInt(p.trim());
                            itemDao.deleteItem(cartId, pid);
                        } catch (Exception ignored) {}
                    }
                } else {
                    // nếu checkout tất cả thì xóa hết cart_items của cartId (tùy bạn có hàm clearCartItems)
                    itemDao.clearCartItems(cartId); // nếu chưa có thì mình sẽ đưa SQL cho bạn
                }
            }


            // nếu checkout theo ids => xóa đúng các món đó khỏi cart session
            if (idsParam != null && !idsParam.isBlank()) {
                for (String p : idsParam.split(",")) {
                    try {
                        int pid = Integer.parseInt(p.trim());
                        fullCart.deleteItem(pid);
                    } catch (Exception ignored) {}
                }
                session.setAttribute("cart", fullCart);
            } else {
                session.setAttribute("cart", new Cart());
            }

            resp.sendRedirect(req.getContextPath() + "/account?tab=orders#orders-all");
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect(req.getContextPath() + "/checkout?error=1");
        }
    }
}
