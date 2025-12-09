package com.webgiadung.doanweb.dao;

import com.webgiadung.doanweb.model.Product;
import org.jdbi.v3.core.Jdbi;

import java.util.ArrayList;
import java.util.List;

public class ProductDao extends BaseDao{
    public List<Product> getListProduct(){
        Jdbi jdbi= get();
        List<Product> products=
        jdbi.withHandle(h->{
            return h.createQuery("select id,name,img,price_first,discount,price from products").mapToBean(Product.class).list();
        });
                return products;

    }

}
