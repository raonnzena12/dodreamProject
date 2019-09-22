package com.dodream.spring.admin.controller.singo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminSingoController {

	@RequestMapping(value = "adminSlist.dr", method = RequestMethod.GET)
	public String SingoListView() {
		return "admin/singo/singoViewList";
	}
	
}
