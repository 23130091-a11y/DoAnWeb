package com.webgiadung.doanweb.model;

import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

public class FileUtil {
    // THAY ĐỔI ĐƯỜNG DẪN NÀY khớp với đường dẫn thực tế trên máy tính của bạn
    private static final String PROJECT_PATH = "D:/DoAnLapTrinh/DoAnWeb/src/main/webapp";
    private static final String ASSETS_DIR = "assets/img";

    public static String saveFile(Part part, String subFolder) throws IOException {
        if (part == null || part.getSubmittedFileName() == null || part.getSubmittedFileName().isEmpty()) {
            return null;
        }

        // 1. Làm sạch tên file
        String originalFileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
        String cleanFileName = originalFileName.replaceAll("\\s+", "_");
        String fileName = System.currentTimeMillis() + "_" + cleanFileName;

        // 2. Tạo đường dẫn tuyệt đối trỏ thẳng vào src/main/webapp/assets/image
        String fullPath = PROJECT_PATH + File.separator + ASSETS_DIR + File.separator + subFolder;

        File dir = new File(fullPath);
        if (!dir.exists()) {
            dir.mkdirs(); // Tự động tạo thư mục nếu chưa có
        }

        // 3. Ghi file trực tiếp vào ổ đĩa
        part.write(fullPath + File.separator + fileName);

        return fileName;
    }
}