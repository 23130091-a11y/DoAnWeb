package com.webgiadung.doanweb.services;

import com.webgiadung.doanweb.dao.AuthDao;
import com.webgiadung.doanweb.model.User;

public class AuthService {
    AuthDao authDao = new AuthDao();

    public User checkLogin(String email, String password) {
        User user = authDao.getUserByEmail(email);
        if (user == null) return null;

        if (user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }
}
