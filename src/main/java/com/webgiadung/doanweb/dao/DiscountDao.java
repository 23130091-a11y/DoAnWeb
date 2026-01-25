package com.webgiadung.doanweb.dao;

import com.webgiadung.doanweb.model.Discounts;

public class DiscountDao extends BaseDao {

    public int insertDiscount(Discounts d) {
        return get().withHandle(handle -> {
            return handle.createUpdate("""
                INSERT INTO discounts (name, type_discount, discount, description, start_date, end_date) 
                VALUES (:name, :typeDiscount, :discount, :description, :startDate, :endDate)
                """)
                    .bindBean(d) // Jdbi sẽ tự map :name với d.getName(), :typeDiscount với d.getTypeDiscount(),...
                    .executeAndReturnGeneratedKeys("id")
                    .mapTo(Integer.class)
                    .one();
        });
    }
    public Discounts getDiscountById(int id) {
        return get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM discounts WHERE id = :id")
                    .bind("id", id)
                    .mapToBean(Discounts.class)
                    .findOne()
                    .orElse(null);
        });
    }
}
