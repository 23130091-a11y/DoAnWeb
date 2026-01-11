package com.webgiadung.doanweb.services;

import com.webgiadung.doanweb.dao.KeywordsDao;
import com.webgiadung.doanweb.model.Keywords;
import java.util.List;

public class KeywordService {
    private KeywordsDao keywordsDao = new KeywordsDao();

    public List<Keywords> getAllKeywords() {
        return keywordsDao.getAll();
    }

    public int createKeyword(String name, String description) {
        // 1. Kiểm tra rỗng
        if (name == null || name.trim().isEmpty()) {
            return -1;
        }

        // 2. Kiểm tra trùng lặp
        if (keywordsDao.checkExists(name.trim())) {
            return 0; // Đã tồn tại
        }

        // 3. Tạo đối tượng và lưu
        Keywords kw = new Keywords();
        kw.setName(name.trim());
        kw.setDescription(description);

        try {
            return keywordsDao.insert(kw);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }
}