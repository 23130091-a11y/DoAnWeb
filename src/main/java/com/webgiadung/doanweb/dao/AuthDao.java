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

    // Check email tồn tại
    public boolean checkEmailExists(String email) {
        return get().withHandle(h ->
                h.createQuery("SELECT id FROM users WHERE email = :email")
                        .bind("email", email)
                        .mapTo(Integer.class)
                        .findOne()
                        .isPresent()
        );
    }

    // Đăng ký user
    public void register(User user) {
        get().useHandle(h ->
                h.createUpdate(
                                "INSERT INTO users (email, password, phone, role, status) " +
                                        "VALUES (:email, :password, :phone, :role, :status)"
                        )
                        .bind("email", user.getEmail())
                        .bind("password", user.getPassword())
                        .bind("phone", user.getPhone())
                        .bind("role", user.getRole())
                        .bind("status", user.getStatus())
                        .execute()
        );
    }
}