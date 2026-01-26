package com.webgiadung.doanweb.model;

import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

public class FileUtil {
    private static final String PROJECT_PATH = "D:/DoAnLapTrinh/DoAnWeb/src/main/webapp";
    private static final String ASSETS_DIR = "assets/img";

    public static String saveFile(Part part, String subFolder) throws IOException {
        if (part == null || part.getSubmittedFileName() == null || part.getSubmittedFileName().isEmpty()) {
            return null;
        }

        String originalFileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
        String cleanFileName = originalFileName.replaceAll("\\s+", "_");
        String fileName = System.currentTimeMillis() + "_" + cleanFileName;

        String fullPath = PROJECT_PATH + File.separator + ASSETS_DIR + File.separator + subFolder;

        File dir = new File(fullPath);
        if (!dir.exists()) {
            dir.mkdirs();
        }

        part.write(fullPath + File.separator + fileName);

        return fileName;
    }
}