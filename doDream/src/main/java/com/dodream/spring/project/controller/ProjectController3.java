package com.dodream.spring.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dodream.spring.common.Pagination;
import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.service.ProjectService;
import com.dodream.spring.project.model.vo.FilteringList;
import com.dodream.spring.project.model.vo.Like;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.project.model.vo.Reward;

@Controller
public class ProjectController3 {
///황선희
	
	@Autowired
	private ProjectService pService;
	
	// 카테고리 전체 출력 임시 매핑
	@RequestMapping("category.dr")
	public String fundListView(String keyword, String cate, String order, String endYn, Integer page, HttpServletRequest request, Model model) {
		int currentPage = ( page == null ) ? 1 : page;
		int userNo = 0;
		String category = ( cate == null || cate.equals("") ) ? "total" : cate;
		String order1 = ( order == null || order.equals("") ) ? "popluar" : order;
		String endYn1 = ( endYn == null || endYn.equals("") ) ? "ALL" : endYn;
		String keyword1 = ( keyword == null || keyword.equals("") || keyword.equals("null") ) ? null : keyword;
		if ( request.getSession().getAttribute("loginUser") != null ) userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		
		FilteringList filter = new FilteringList(userNo, category, order1, keyword1, endYn1);
		
		ArrayList<Project> pList = pService.selectPrjList(filter, currentPage);
		model.addAttribute("pList", pList);
		model.addAttribute("pi", Pagination.getPageInfo());
		model.addAttribute("keyword", keyword1);
		model.addAttribute("cate", category);
		model.addAttribute("order", order1);
		model.addAttribute("endYn", endYn1);
		return "common/fundList";
	}
	
	@ResponseBody
	@RequestMapping("loadListByAjax.dr")
	public ArrayList<Project> loadListByAjax(String keyword, String cate, String order, String endYn, Integer page, HttpServletRequest request) {
		int currentPage = ( page == null ) ? 1 : page;
		int userNo = 0;
		String category = ( cate == null || cate.equals("") ) ? "total" : cate;
		String order1 = ( order == null || order.equals("") ) ? "popluar" : order;
		String endYn1 = ( endYn == null || endYn.equals("") ) ? "ALL" : endYn;
		String keyword1 = ( keyword == null || keyword.equals("") ) ? null : keyword;
		if ( request.getSession().getAttribute("loginUser") != null ) userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		
		FilteringList filter = new FilteringList(userNo, category, order1, keyword1, endYn1);
		ArrayList<Project> pList = pService.selectPrjList(filter, currentPage);
		
		return pList;
	}
	
	//REST TEST
	@ResponseBody
	@RequestMapping(value="/{testStr}/{num}", method=RequestMethod.GET)
	public HashMap<String, Object> restTest(@PathVariable String testStr, @PathVariable int num) {
		
		HashMap<String, Object> map = new HashMap<>();
		if ( num == 1 ) {
			map.put("1", testStr);
		} else {
			map.put("2", testStr+testStr);
		}
		
		return map;
	}
	
	// 리스트에서 프로젝트 좋아요 누르는 링크
	@ResponseBody
	@RequestMapping("ajaxProjectLike.dr")
	public int ajaxProjectLike(Integer pNo, Integer uNo, Integer status) {
		int result = 0;
		if ( pNo != null && uNo != null ) {
			result = pService.insertLikeProject(new Like(uNo, pNo), status.intValue());
		} 		
		return result;
	}
	
	// 내가 오픈한 프로젝트 리스트 조회하는 뷰
	@RequestMapping("myProjectList.dr")
	public String testtest(HttpServletRequest request, String order, Model model) {
		int userNo = 0 ;
		Object loginUser = request.getSession().getAttribute("loginUser");
		if ( loginUser != null ) {
			userNo = ((Member)loginUser).getUserNo();
		}
		
		String order1 = (order == null || order.equals("") ) ? "ALL" : order;
		ArrayList<Project> pList = pService.selectOpenPrjList(new FilteringList(userNo, order1));
		
		model.addAttribute("menu", 4);
		model.addAttribute("sub", 2);
		model.addAttribute("pList", pList);
		model.addAttribute("order", order1);
		
		return "member/myProjectList";
	}
	
	// 내가 오픈한 프로젝트 현황 조회하는 뷰
	@RequestMapping("myPrjInfo.dr")
	public String testtesttest(Integer pNo, Model model) {
		int pno = (pNo == null)? 0 : pNo;
		Project prj = pService.selectProjectS(pno);
		ArrayList<Reward> rList = pService.selectPrjRwdList(pno);
		
		model.addAttribute("prj", prj);
		model.addAttribute("rList", rList);
		
		return "project/openProjectStatus";
	}

}
