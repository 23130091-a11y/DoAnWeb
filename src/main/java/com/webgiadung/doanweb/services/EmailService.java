package com.webgiadung.doanweb.services;

import com.sendgrid.*;
import com.sendgrid.helpers.mail.Mail;
import com.sendgrid.helpers.mail.objects.Content;
import com.sendgrid.helpers.mail.objects.Email;
public class EmailService {

    private static final String API_KEY = "api-key";

    public void sendVerifyEmail(String toEmail, String verifyLink) {

        try {
            Email from = new Email("noreply@hanhh2k.space", "WebGiaDung");
            Email to = new Email(toEmail);

            String html = """
                <h2>Xác nhận đăng ký tài khoản</h2>
                <p>Vui lòng bấm vào nút bên dưới để kích hoạt tài khoản:</p>
                <a href="%s"
                   style="padding:10px 15px;background:#0d6efd;color:#fff;text-decoration:none;">
                   XÁC NHẬN TÀI KHOẢN
                </a>
            """.formatted(verifyLink);

            Content content = new Content("text/html", html);
            Mail mail = new Mail(from, "Xác nhận đăng ký WebGiaDung", to, content);

            SendGrid sg = new SendGrid(API_KEY);
            Request req = new Request();
            req.setMethod(Method.POST);
            req.setEndpoint("mail/send");
            req.setBody(mail.build());
            sg.api(req);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
