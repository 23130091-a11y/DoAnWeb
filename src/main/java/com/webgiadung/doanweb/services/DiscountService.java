package com.webgiadung.doanweb.services;

import com.webgiadung.doanweb.dao.DiscountDao;
import com.webgiadung.doanweb.model.Discounts;

public class DiscountService {
    DiscountDao discountDao = new DiscountDao();

    public int insertDiscount(Discounts discount) {

        return discountDao.insertDiscount(discount);
    }
    public Discounts getDiscountById(int id) {
        return discountDao.getDiscountById(id);
    }
}