package com.dodream.spring.project.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.project.model.service.ProjectService;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.project.model.vo.RewardList;

@Controller
public class ProjectController {
/// 창혁씨

	@Autowired
	private ProjectService pService;

	/**
	 * 메뉴바에서 펀드 등록하기 클릭시 프로젝트 동의 페이지로 이동
	 * 이동하기 전에 프로젝트 번호를 생성(nextval)합니다.
	 * @return insertFundAgreement.jsp
	 */
	@RequestMapping("insertFundForm.dr")
	public ModelAndView insertFundForm(ModelAndView mv) {
		int pNo = pService.createProjectNumber();
		if(pNo>0) {
			mv.addObject("pNo",pNo);
			mv.setViewName("project/insertFundForm");
		}else {
			mv.addObject("msg","프로젝트 번호 생성 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	

	/**
	 * 프로젝트 등록 페이지에서 임시저장 혹은 검토요청하기 버튼을 누르면 동작하는 메소드입니다.
	 * Reward는 rList에 인덱스로 담깁니다. 
	 * @param mv
	 * @param project
	 * @param rList
	 * @param request
	 * @param uploadfile1
	 * @param uploadfile2
	 * @return mv
	 */
	@RequestMapping(value="insertProject.dr", method=RequestMethod.POST)
	public ModelAndView insertProject(ModelAndView mv, Project project, RewardList rList, HttpServletRequest request, MultipartFile uploadfile1, MultipartFile uploadfile2) {
		int result = pService.insertProject(project, rList, uploadfile1, uploadfile2);
		
		return mv;
	}
	
}
