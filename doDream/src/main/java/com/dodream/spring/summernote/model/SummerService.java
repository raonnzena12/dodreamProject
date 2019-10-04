package com.dodream.spring.summernote.model;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;  

import com.dodream.spring.customerCenter.model.vo.Notice;
import com.dodream.spring.customerCenter.model.vo.Review;

public interface SummerService {
 
	public abstract String insertImage(MultipartFile uploadFile, HttpServletRequest request);

	public abstract void cancleImage(HttpServletRequest request, String[] imgArr);

	public abstract int insertNotice(Notice notice);

	public abstract int updateNotice(Notice notice);

	public abstract int insertReview(Review review, MultipartFile uploadFile, HttpServletRequest request);

}
