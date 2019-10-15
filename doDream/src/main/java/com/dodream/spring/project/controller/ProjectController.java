package com.dodream.spring.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.service.ProjectService;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.project.model.vo.Reward;
import com.dodream.spring.project.model.vo.RewardList;

@Controller
public class ProjectController {
/// 창혁씨

	@Autowired
	private ProjectService pService;

	/**
	 * 메뉴바에서 펀드 등록하기 클릭시 프로젝트 동의 페이지로 이동
	 * 이동하기 전에 프로젝트테이블에 빈 데이터들을 삽입하여 미리 생성해둡니다. (프로젝트 상태값 0 (임시생성))
	 * @return insertFundAgreement.jsp
	 */
	@RequestMapping("insertFundForm.dr")
	public ModelAndView insertFundForm(ModelAndView mv, String isDoneByModal) {
		int result = pService.createProject();
		int pNo;
		Project project = new Project();
		if(isDoneByModal != null) mv.addObject("isDoneByModal","true");
		if(result>0) {
			mv.setViewName("project/insertFundForm");
			pNo = pService.selectThisProject();
			project.setpNo(pNo);
			mv.addObject("project",project);
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
	@ResponseBody
	@RequestMapping(value="insertProject.dr", method=RequestMethod.POST)
	//public int insertProject(Project project, RewardList rList, MultipartFile uploadfile1, MultipartFile uploadfile2, MultipartFile uploadfile3, HttpServletRequest request, ModelAndView mv) {
	public String insertProject(Project project, RewardList rList, MultipartFile uploadfile1, MultipartFile uploadfile2, MultipartFile uploadfile3, HttpServletRequest request) {	
		// Project의 등록부분입니다.
		// project의 textarea에 있는 "\n" 을 <br>태그로 전환시킵니다.
		int pStatusNum = project.getpStatusNum();
		int userNo = project.getpWriter();
		String pSummaryText = project.getpSummaryText().replaceAll("\n", "<br>");
		String pStory = project.getpStory().replaceAll("\n", "<br>");
		String pArtistIntroduction = project.getpArtistIntroduction().replaceAll("\n", "<br>");
		project.setpSummaryText(pSummaryText);
		project.setpStory(pStory);
		project.setpArtistIntroduction(pArtistIntroduction);
		// 파일 등록 부분
		// DB 연결을 수행합니다.
		int result = pService.insertProject(project, uploadfile1, uploadfile2, uploadfile3, request);
		
		System.out.println(project);
		// Reward의 등록부분입니다.
		// 먼저 전달받은 리워드리스트에 null이 아닌 reward만을 저장합니다. (인덱스의 공백이 있을 수 있기 때문입니다.)
		if(result==0) return "error";
		ArrayList<Reward> rewardList = new ArrayList<Reward>();
		for (int i = 0; i < rList.getrList().size(); i++) {
			Reward reward = rList.getrList().get(i);
			try {
				if(reward.getIsSaved().equals("true")) rewardList.add(reward);
			}catch(NullPointerException e) {}
		}
		// 리워드가 존재할 경우 기존에 있던 리워드를 전부 삭제시킵니다.
		if(rewardList.size()>0) 
			result = pService.deleteRewards(project.getpNo());
		if(result<0) return "error";
		// 체크된 reward의 개수만큼 DB에 insert시킵니다.
		for (Reward reward : rewardList) {
			
			// 프로젝트 번호와 리워드를 연결 시켜줍니다.
			reward.setrRefPno(project.getpNo());
			
			// textarea에 있는 "\n"을 <br>태그로 전환시킵니다.
			String rExplain = reward.getrExplain().replaceAll("\n", "<br>");
			reward.setrExplain(rExplain);
			
			String rOptionAdd = reward.getrOptionAdd().replaceAll("\n", "<br>");
			// 옵션번호가 1번이면 추가옵션사항이 없으므로 비워줍니다. (페이지에서 값이 넘어오는 경우가 있을 수 있으므로 처리해 줘야합니다.)
			if(reward.getrOptionNo()==1) rOptionAdd = "";
			reward.setrOptionAdd(rOptionAdd);
			
			String rShipCDT = "Y";
			if(reward.getrShipCDT()==null) rShipCDT = "N"; 
			reward.setrShipCDT(rShipCDT);
			// DB연결을 수행합니다.
			result = pService.insertReward(reward);
			System.out.println(reward);
			// 오류가 있을 경우에만 콘솔창에 해당 리워드를 출력합니다.
			if(result==0) System.out.println("리워드 DB 저장 실패, 리워드 정보 : \n"+reward.toString());
		}
		if(pStatusNum==1) return result + "";
		else if(pStatusNum==2) return "myOpenProjectList.dr?userNo="+userNo;
		else return "error";
	}
	
	/**
	 * 프로젝트 등록하기에서 썸네일 이미지 등록시 서버에 파일을 저장해주는 메소드입니다.
	 * @return file
	 */
	@ResponseBody
	@RequestMapping(value="uploadthumbimg.dr", method=RequestMethod.POST)
	public String uploadPThumbImg(HttpServletRequest request, MultipartFile uploadFile) {
		System.out.println(uploadFile);
		return uploadFile+"";
	}
	
	@RequestMapping("selectCurrentProject.dr")
	public ModelAndView selectCurrentProject(int pNo, HttpServletRequest request, ModelAndView mv) {
		Project project = pService.selectCurrentProject(pNo);
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		if(loginUser==null || loginUser.getUserNo() != project.getpWriter()) {
			mv.addObject("msg","비정상적인 접근입니다.").setViewName("common/errorPage");
			return mv;
		}
		ArrayList<Reward> rList = pService.selectCurrentReward(pNo);
		int size = rList.size();
		try{
			String pSummaryText = project.getpSummaryText();
			if(pSummaryText!=null && !pSummaryText.equals("")) {
				pSummaryText = pSummaryText.replace("<br>", "\n");
				project.setpSummaryText(pSummaryText);
			}
			String pArtistIntroduction = project.getpArtistIntroduction();
			if(pArtistIntroduction != null && !pArtistIntroduction.equals("")) {
				pArtistIntroduction = pArtistIntroduction.replace("<br>", "\n");
				project.setpArtistIntroduction(pArtistIntroduction);
			}
		}catch(NullPointerException e) {}
		mv.addObject("rSize",size);
		mv.addObject("project",project);
		mv.addObject("rList",rList);
		mv.addObject("isUpdate","true");
		mv.setViewName("project/insertFundForm");
		return mv;
	}
}
