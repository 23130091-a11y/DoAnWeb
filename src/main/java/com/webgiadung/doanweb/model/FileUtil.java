package com.webgiadung.doanweb.model;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

public class FileUtil {
    // THAY ĐỔI ĐƯỜNG DẪN NÀY khớp với đường dẫn thực tế trên máy tính của bạn
    private static final String PROJECT_PATH = "D:/DoAnLapTrinh/DoAnWeb/src/main/webapp";
    private static final String ASSETS_DIR = "assets/img";

    public static String saveFile(Part part, String subFolder, HttpServletRequest request) throws IOException {
        if (part == null || part.getSubmittedFileName() == null || part.getSubmittedFileName().isEmpty()) {
            return null;
        }

        String originalFileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
        String fileName = System.currentTimeMillis() + "_" + originalFileName.replaceAll("\\s+", "_");

        // LẤY ĐƯỜNG DẪN THỰC TẾ MÀ SERVER ĐANG CHẠY
        // Nó sẽ trỏ vào thư mục /target/ hoặc /out/ tùy cấu hình IntelliJ
        String uploadPath = request.getServletContext().getRealPath("/") + "assets" + File.separator + "img" + File.separator + subFolder;

        File dir = new File(uploadPath);
        if (!dir.exists()) dir.mkdirs();

        part.write(uploadPath + File.separator + fileName);
        return fileName;
    }
}