package com.webgiadung.doanweb.model;

import java.io.Serializable;

public class Product implements Serializable {
   private int id;
   private String name;
   private String img;
   private double price_first;
   private double discount;
   private double price;
   private int status;

    public Product() {
    }

    public Product(int id, String name, String img, double price_first, double discount, double price, int status) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.price_first = price_first;
        this.discount = discount;
        this.price = price;
        this.status = status;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice_first() {
        return price_first;
    }

    public void setPrice_first(double price_first) {
        this.price_first = price_first;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id: " + id +
                ", name: '" + name + '\'' +
                ", img: '" + img + '\'' +
                ", price_first: " + price_first +
                ", discount: " + discount +
                ", price: " + price +
                ", status: " + status +
                '}';
    }
}
