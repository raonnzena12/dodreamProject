package com.dodream.spring.common.util.model.vo;

public class CommonMail {

	public String setCode() {
		
		StringBuffer sb = new StringBuffer();
		
		int a = 0;

		for (int i = 0; i < 6; i++) { 
			a = (int) (Math.random() * 10);
			/*
			 * if ((a >= 48 && a <= 57) || (a >= 65 && a <= 90) || (a >= 97 && a <= 122))
			 * 
			 * else i--;
			 */
			sb.append (a);
		}
		return sb.toString();
	}
	
}