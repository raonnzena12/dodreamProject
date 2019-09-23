package com.dodream.spring.common.util.model.vo;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

public class MailHandler {
	
	private JavaMailSender mailSender;
	private MimeMessage msg;
    private MimeMessageHelper messageHelper;

    public MailHandler(JavaMailSender mailSender) throws MessagingException {
        this.mailSender = mailSender;
        msg = this.mailSender.createMimeMessage();
        messageHelper = new MimeMessageHelper(msg, true, "UTF-8");
    }
    
    public void setSubject(String subject) throws MessagingException {
        messageHelper.setSubject(subject);
    }
    public void setText(String htmlContent) throws MessagingException {
        messageHelper.setText(htmlContent, true);
    }
    public void setFrom(String email, String name) throws UnsupportedEncodingException, MessagingException {
        messageHelper.setFrom(email, name);
    }
    public void setTo(String email) throws MessagingException {
        messageHelper.setTo(email);
    }
    public void send() {
        mailSender.send(msg);
    }




}
