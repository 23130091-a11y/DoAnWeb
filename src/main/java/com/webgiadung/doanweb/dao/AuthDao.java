package com.webgiadung.doanweb.dao;

import com.webgiadung.doanweb.model.User;

public class AuthDao extends BaseDao {
    public User getUserByEmail(String email) {
        return get().withHandle(h ->
                h.createQuery("SELECT * FROM users WHERE email = :email")
                        .bind("email", email)
                        .mapToBean(User.class)
                        .findOne()
                        .orElse(null)
        );
    }
}
