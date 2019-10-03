package com.dodream.spring.summernote.controller;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dodream.spring.customerCenter.model.vo.Notice;
import com.dodream.spring.summernote.model.SummerService;

@Controller
public class SummerNoteController {

	@Autowired
	private SummerService sService;
	
	/** 관리자 공지사항 이미지 등록
	 * @param request
	 * @param uploadFile
	 * @return path
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value="insertImage.dr", method = RequestMethod.POST)
	public String insertImage(HttpServletRequest request, MultipartFile uploadFile) throws Exception {
		String path = sService.insertImage(uploadFile, request);
		return path;
	}
	
	/** 관리자 공지사항 이미지 삭제 
	 * @param request
	 * @param imgList
	 * @return 
	 */
	@RequestMapping(value="cancle.dr", method = RequestMethod.POST)
	public String cancleImage(HttpServletRequest request, String imgList) {
		String[] imgArr = imgList.split(",");
		System.out.println(Arrays.toString(imgArr));
		sService.cancleImage(request,imgArr);
		return "redirect:adminNoticeList.dr";
	}
	
	
	/** 관리자 공지사항 등록 
	 * @param notice
	 * @param model
	 * @return path
	 */
	@RequestMapping("insert.dr")
	public String insertNotice(Notice notice, Model model) {
		
		int result = sService.insertNotice(notice);

		String path = null;
		if(result > 0) {
			path = "redirect:adminNoticeList.dr";
		} else {
			model.addAttribute("msg", "공지사항 등록 실패");
			path = "redirect:adminNoticeList.dr";
		}
		
		return path;
	}
	
	/**  관리자 공지사항 수정
	 * @param notice
	 * @param model
	 * @return result
	 */
	@RequestMapping("updateNotice.dr")
	public String updateNotice(Notice notice, Model model) {
		 
		int result = sService.updateNotice(notice);
		
		System.out.println(notice.getnNo());
		String path = null;
		if(result > 0) {
			path= "redirect:adminNoticeList.dr?nNo="+notice.getnNo();
		} else {
			model.addAttribute("msg","공지사항 수정 실패하였습니다.");
			path= "redriect:adminNoticeList.dr";
		}
		return path;
		
	}
	
	
	
	
	
	
}

