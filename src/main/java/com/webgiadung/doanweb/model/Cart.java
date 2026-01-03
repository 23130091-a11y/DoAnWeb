package com.webgiadung.doanweb.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class Cart implements Serializable {
    Map<Integer, CartItem> data;
    User user;

    public Cart() {
        data = new HashMap<>();
    }

    public void addItem(Product product, int quantity) {
        if(quantity <= 0) quantity = 1;
        if(get(product.getId()) != null) {
            data.get(product.getId()).upQuantity(quantity);
        } else {
            data.put(product.getId(), new CartItem(product, quantity, product.getPrice()));
        }
    }

    private CartItem get(int id) {
        return data.get(id);
    }

    public boolean updateItem(int productId, int quantity) {
        if(get(productId) == null) return false;
        if(quantity <= 0) quantity = 1;
        data.get(productId).setQuantity(quantity);
        return true;
    }

    public CartItem deleteItem(int productId) {
        if(get(productId) == null) return null;
        return data.remove(productId);
    }

    public ArrayList<CartItem> deleteAll() {
        ArrayList<CartItem> list = new ArrayList<>(data.values());
        data.clear();
        return list;
    }

    public ArrayList<CartItem> getItems() {
        return new ArrayList<>(data.values());
    }

    public int getTotalQuantity() {
        return getItems()
                .stream()
                .mapToInt(CartItem::getQuantity)
                .sum();
    }

    public double getTotalPrice() {
        return getItems()
                .stream()
                .mapToDouble(item -> item.getPrice() * item.getQuantity())
                .sum();
    }

    public void updateCustomerInfo(User user) {
        this.user = user;
    }
}
