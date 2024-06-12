package com.personal.personal_website;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class ReturnEmail {
    Properties emailProperties;
    Session mailSession;
    MimeMessage emailMessage;
    String emailHost = "smtp.gmail.com";
    String emailPort = "";// gmail's smtp port
    String fromUser = "";// your gmail id
    String fromUserEmailPassword = "";

    public void setMailServerProperties() {
        emailProperties = System.getProperties();
        emailProperties.put("mail.smtp.port", emailPort);
        emailProperties.put("mail.smtp.auth", "true");
        emailProperties.put("mail.smtp.starttls.enable", "true");
    }

    public void createEmailMessage(String emailSubject, String emailBody, String toEmail)
            throws MessagingException {
        mailSession = Session.getDefaultInstance(emailProperties, null);
        emailMessage = new MimeMessage(mailSession);
        emailMessage.addRecipient(Message.RecipientType.TO,
                new InternetAddress(toEmail));
        emailMessage.addRecipient(Message.RecipientType.TO,
                new InternetAddress(fromUser));
        emailMessage.setSubject(emailSubject);
        emailMessage.setContent(emailBody, "text/html");
    }

    public void createEmailMessage(String emailSubject, String emailBody)
            throws MessagingException {
        mailSession = Session.getDefaultInstance(emailProperties, null);
        emailMessage = new MimeMessage(mailSession);
        emailMessage.addRecipient(Message.RecipientType.TO,
                new InternetAddress(fromUser));
        emailMessage.setSubject(emailSubject);
        emailMessage.setContent(emailBody, "text/html");
    }

    public void sendEmail() throws MessagingException {
        Transport transport = mailSession.getTransport("smtp");
        transport.connect(emailHost, fromUser, fromUserEmailPassword);
        transport.sendMessage(emailMessage, emailMessage.getAllRecipients());
        transport.close();
    }
}
