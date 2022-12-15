package com.inn.cafe.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmailUtil {
    @Autowired
    private JavaMailSender emailSender;

    public void SendSimpleMessage(String to , String subject , String text , List<String> list){
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom("amitkumarx31@gmail.com");
        message.setTo(to);
        message.setSubject(subject);
        message.setText(text);
        if(list != null && list.size() > 0)
            message.setCc(getCcArray(list));
        emailSender.send(message);
    }

    public String[] getCcArray(List<String> cclist){
        String[] cc = new String[cclist.size()];
        for (int i = 0 ; i < cclist.size(); i++){
            cc[i] = cclist.get(i);
        }
        return cc;
    }
}
