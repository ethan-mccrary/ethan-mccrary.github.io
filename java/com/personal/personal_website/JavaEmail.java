package com.personal.personal_website;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/emailServlet")
public class JavaEmail extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        String message = null;
        String status = null;
        ReturnEmail javaEmail = new ReturnEmail();
        javaEmail.setMailServerProperties();
        String emailSubject = "";
        String emailBody = "";
        if (request.getParameter("captcha") != null) {
            if (request.getParameter("fname") != null && request.getParameter("lname") != null) {
                emailSubject = "Contact from " + request.getParameter("fname") + " " + request.getParameter(
                        "lname") + " via emccrary.com.";
            }
            if (request.getParameter("message") != null) {
                emailBody += "I'm glad that you decided to reach out to me! You can expect a response from me soon."
                        + "<blockquote><p>"
                        + request.getParameter("message") + "<br>"
                        + request.getParameter("fname") + " " + request.getParameter("lname")
                        + "</p></blockquote>"
                        + "<br>";
            }
            if (request.getParameter("email") != null) {
                emailBody += "Email: "
                        + request.getParameter("email") + "<br>";
            }

            if (request.getParameter("copy") != null) {
                try {
                    javaEmail.createEmailMessage(emailSubject, emailBody, request.getParameter("email"));
                } catch (MessagingException e) {
                    e.printStackTrace();
                }
            } else {
                try {
                    javaEmail.createEmailMessage(emailSubject, emailBody);
                } catch (MessagingException e) {
                    e.printStackTrace();
                }
            }

            try {
                javaEmail.sendEmail();
                status = "success";
                message = "Email sent Successfully!";
            } catch (MessagingException me) {
                status = "error";
                message = "All fields are required!";
            }
        }

        response.sendRedirect(request.getContextPath() + "/index.jsp");
    }
}