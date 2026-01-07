package com.webgiadung.doanweb.dao;

import com.webgiadung.doanweb.model.User;

import java.util.List;
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
    // ============ ADMIN: CUSTOMER MANAGEMENT ============

    public List<User> findUsers(String keyword) {
        String kw = (keyword == null) ? "" : keyword.trim();

        return get().withHandle(h -> {
            if (kw.isEmpty()) {
                return h.createQuery(
                                "SELECT id, name, email, CAST(phone AS CHAR) AS phone, address, avatar, status, role " +
                                        "FROM users ORDER BY id DESC"
                        )
                        .mapToBean(User.class)
                        .list();
            }

            return h.createQuery(
                            "SELECT id, name, email, CAST(phone AS CHAR) AS phone, address, avatar, status, role " +
                                    "FROM users " +
                                    "WHERE name LIKE :kw OR email LIKE :kw OR CAST(phone AS CHAR) LIKE :kw " +
                                    "ORDER BY id DESC"
                    )
                    .bind("kw", "%" + kw + "%")
                    .mapToBean(User.class)
                    .list();

        });
    }

    public User findUserById(int id) {
        return get().withHandle(h ->
                h.createQuery("SELECT * FROM users WHERE id = :id")
                        .bind("id", id)
                        .mapToBean(User.class)
                        .findOne()
                        .orElse(null)
        );
    }

    public void adminUpdateUser(User u) {
        get().useHandle(h ->
                h.createUpdate(
                                "UPDATE users SET " +
                                        "name=:name, email=:email, phone=:phone, address=:address, " +
                                        "role=:role, status=:status " +
                                        "WHERE id=:id"
                        )
                        .bindBean(u)
                        .execute()
        );
    }
    public void adminUpdateUserWithPassword(User u) {
        get().useHandle(h ->
                h.createUpdate(
                                "UPDATE users SET " +
                                        "name=:name, email=:email, phone=:phone, address=:address, " +
                                        "role=:role, status=:status, password=:password " +
                                        "WHERE id=:id"
                        )
                        .bindBean(u)
                        .execute()
        );
    }

    // Soft delete: khóa user để tránh lỗi FK (đơn hàng...)
    public void adminSoftDeleteUser(int id) {
        get().useHandle(h ->
                h.createUpdate("UPDATE users SET status = 0 WHERE id=:id")
                        .bind("id", id)
                        .execute()
        );
    }

}