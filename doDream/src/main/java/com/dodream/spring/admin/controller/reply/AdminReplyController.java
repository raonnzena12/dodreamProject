package com.dodream.spring.admin.controller.reply;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.admin.model.service.AdminService;
import com.dodream.spring.project.model.vo.Reply;

@Controller
public class AdminReplyController {

	@Autowired
	private AdminService aService;
	
	// 댓글 리스트
	@RequestMapping("adminReplyList.dr")
	public ModelAndView replyListView(ModelAndView mv) {
		
		ArrayList<Reply> list = aService.replyListView();
		
		if(list != null) {
			mv.addObject("list", list).setViewName("admin/reply/replyViewList");
		} else {
			mv.addObject("msg", "댓글 목록이 존재하지 않습니다.").setViewName("admin/reply/replyViewList");
		}
		
		return mv;
	}
	
	// 댓글 삭제
	@RequestMapping("removeReply.dr")
	public String removeReply(Model model, int reNo) {
		
		int result = aService.removeReply(reNo);
		
		if(result > 0) {
			return "redirect:adminReplyList.dr";
		} else {
			return "redirect:adminReplyList.dr";
		}
		
	}
	
	
	
	
}
