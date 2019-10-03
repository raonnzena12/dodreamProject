package com.dodream.spring.summernote.model;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dodream.spring.admin.model.dao.AdminDao;
import com.dodream.spring.customerCenter.model.vo.Notice;


@Service("sService")
public class SummerServiceImpl implements SummerService {

	@Autowired
	private AdminDao aDao;
	
	// 관리자 공지사항 등록
	@Override
	public String insertImage(MultipartFile uploadFile, HttpServletRequest request) {
		
		String renameFileName = null;
		renameFileName = renameFile(uploadFile);
		saveFile(renameFileName, uploadFile, request);
		String savePath = request.getContextPath() + "/resources/images/summernoteimg/"+renameFileName;
		return savePath;
	}
	
	// 관리자 공지사항 취소
	@Override
	public void cancleImage(HttpServletRequest request, String[] imgArr) {
		
		String savePath = request.getSession().getServletContext().getRealPath("resources")+"/images/summernoteimg/";
		
		File file = null;
		for(String img : imgArr) {
			file = new File(savePath + img);
			if(file.exists()) { // 파일이 존재하는 경우
				file.delete();
			}
		}
	}

	
	public String renameFile(MultipartFile file) {

		// "년월일시분초.확장자" 로 파일명 변경
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

		String originFileName = file.getOriginalFilename();

		String renameFileName = sdf.format(new Date()) + "."
				+ originFileName.substring(originFileName.lastIndexOf(".") + 1);

		return renameFileName;
	}

	public int saveFile(String renameFileName, MultipartFile uploadFile, HttpServletRequest request) {

		// 파일 저장 경로 설정
		String root = request.getSession().getServletContext().getRealPath("resources");

		// 진짜 저장할 경로
		String savePath = root + "\\images\\summernoteimg";

		// 저장 폴더 선택
		File folder = new File(savePath);

		// 만약 해당 폴더가 없는 경우
		if (!folder.exists()) {
			folder.mkdir(); // 폴더 생성
		}

		String filePath = folder + "\\" + renameFileName;

		// 파일 저장 성공 여부 (성공 1, 실패 0)
		int result = 0;

		try {
			uploadFile.transferTo(new File(filePath));
			// 업로드 된 파일을 filePath에 지정된
			// 경로 + 파일명으로 저장하겠다.
			// -> IOException 예외 처리 필요
			result = 1;

		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}

		return result;
	} 

	@Override 
	public int insertNotice(Notice notice) {
		return aDao.insertNotice(notice);
	}

	@Override
	public int updateNotice(Notice notice) {
		return aDao.updateNotice(notice);
	}

	
}
