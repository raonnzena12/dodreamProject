package com.dodream.spring.summernote.controller;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dodream.spring.summernote.model.SummerService;

@Controller
public class SummerNoteController {

	@Autowired
	private SummerService sService;
	
	/** 이미지 등록
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
	
	/** 이미지 삭제 
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
}

