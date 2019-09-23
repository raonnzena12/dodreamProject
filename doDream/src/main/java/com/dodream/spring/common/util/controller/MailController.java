package com.dodream.spring.common.util.controller;

import java.util.List;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dodream.spring.common.util.model.exception.ExistsEmailException;
import com.dodream.spring.common.util.model.vo.CommonMail;
import com.dodream.spring.member.model.service.MemberService;
import com.dodream.spring.member.model.vo.Member;

@Controller
public class MailController {
	
	@Autowired
	private MemberService mService;
	
	private Member mem;	
	
	private CommonMail cm = new CommonMail();
	private JavaMailSender mailSender; 
	
	@ResponseBody
	@RequestMapping(value="authEmail.dr")
	public String userEmail(@RequestParam(value = "userEmail") String userEmail) {
		
		System.out.println(userEmail);
		String code = cm.setCode(); //인증번호 코드 입력
		
		List<Member> mList = mService.checkEmail(userEmail); //이메일 중복검사
					
		 try {
			 if(mList.size() > 0) {
				 throw new ExistsEmailException();
			 }else {
				 MimeMessage msg = mailSender.createMimeMessage();
				 MimeMessageHelper msgHelper = new MimeMessageHelper(msg, true, "UTF-8");
				 
				 msgHelper.setFrom("DoDream Admin");
				 msgHelper.setSubject("Do Dream 회원가입 인증번호 발송 메일입니다.");
				 msgHelper.setText("Do Dream 회원가입 인증번호 확인 이메일입니다."+"\n 인증번호" + code +"를 입력해주세요.");
				 msgHelper.setTo(userEmail);
				 
				 mailSender.send(msg);
				 
				 System.out.println(msg);
			 }
		 }catch (ExistsEmailException e) {
			code = "1";
		}catch (Exception e) {
			code = "0";
		}
		 
		return code;

	}

}
