package com.dodream.spring.summernote.model;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public interface SummerService {

	public abstract String insertImage(MultipartFile uploadFile, HttpServletRequest request);

	public abstract void cancleImage(HttpServletRequest request, String[] imgArr);

}
