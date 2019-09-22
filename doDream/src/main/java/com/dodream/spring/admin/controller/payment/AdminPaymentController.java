package com.dodream.spring.admin.controller.payment;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminPaymentController {

	@RequestMapping(value = "adminPlist1.dr", method = RequestMethod.GET)
	public String paymentListView1() {
		return "admin/payment/paymentViewList1";
	}
	
	@RequestMapping(value = "adminPlist2.dr", method = RequestMethod.GET)
	public String paymentListView2() {
		return "admin/payment/paymentViewList2";
	}
	
	@RequestMapping(value = "adminPlist3.dr", method = RequestMethod.GET)
	public String paymentListView3() {
		return "admin/payment/paymentViewList3";
	}
	
}
