package com.dodream.spring.member.model.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dodream.spring.member.model.dao.MemberDao;
import com.dodream.spring.member.model.exception.MemberException;
import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.report.model.vo.Report;

@Service("mService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao mDao;

	@Override
	public Member loginMember(Member mem) {
		return mDao.selectMember(mem);
	}
	

	@Override
	public List<Member> checkEmail(String userEmail) {
		return mDao.selectCheckEmail(userEmail);
	}

	@Override
	public List<Member> checkNickname(String userNickname) {
		return mDao.selectCheckNickname(userNickname);
	}

	@Override
	public int insertMember(Member member) {
		return mDao.insertMember(member);
  }
  
  @Override
	public int countVisitToday(int userNo) {
		return mDao.countVisitToday(userNo);
	}

	@Override
	public int checkVisitToday(int userNo) {
		return mDao.checkVisitToday(userNo);
	}

	@Override
	public int updateMember(Member mem, HttpServletRequest request, MultipartFile uploadImg) {
		
		int result = 0; 
		String rename = null;

		if ( !uploadImg.getOriginalFilename().equals("") ) {
			rename = renameFile(uploadImg, request);
			mem.setUserProfileImage(rename);
		}
		System.out.println(mem);
				
		result = mDao.updateMember(mem);
		

		if (rename != null && result == 1) {
			result += saveFile(rename, uploadImg, request);

		}
		
				
		return result;
		
	}
	
	public String renameFile(MultipartFile uploadImg, HttpServletRequest request) {

		// '년월실시분초.확장자'로 파일명 변경
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originFileName = uploadImg.getOriginalFilename();
		String renameFile = sdf.format(new Date()) + "."+ originFileName.substring(originFileName.lastIndexOf(".") + 1);
		
		System.out.println(originFileName);

		return renameFile;
	}
	
	public int saveFile(String renameFile, MultipartFile uploadImg, HttpServletRequest request) {

		// 파일 저장경로 설정
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\images\\userProfileImage";
		
		System.out.println(savePath);

		// 저장폴더 선택
		File folder = new File(savePath);

		if (!folder.exists()) {
			folder.mkdir(); // 폴더가 존재하지 않는다면, 폴더 생성
		}

		String filePath = folder + "\\" + renameFile;
		
		// 파일 저장 성공 여부(성공 1, 실패 0)
		int result = 0;
		try {
			uploadImg.transferTo(new File(filePath));
			// 업로드된 파일을 filePath에 지정된 경로+파일명으로 저장
			// IOException 예외 처리 필요
			result = 1;
		} catch (Exception e) {
			System.out.println("파일전송 에러" + e.getMessage());
			throw new MemberException("파일전송에러");
		}

		return result;
	}

	@Override
	public int updatePwd(Member mem) {
		
		return mDao.updatePwd(mem);
	}

	@Override
	public int checkValidate(Member member) {
		return mDao.checkValidate(member);
	}

	@Override
	public int insertSNS(Member member) {
		
		return mDao.insertSNS(member);
	}


	@Override
	public int countOpenProject(int userNo) {
		
		return mDao.countOpenProject(userNo);
	}


	@Override
	public int projectJoinCount(int userNo) {
		return mDao.projectJoinCount(userNo);
	}


	@Override
	public int projectCloseCount(int userNo) {
		return mDao.projectCloseCount(userNo);
	}


	@Override
	public int deleteMember(int userNo) {
		
		return mDao.deleteMember(userNo);
	}

	@Override
	public ArrayList<Project> myFundingList(int userNo) {
		return mDao.myFundingList(userNo);
	}


	@Override
	public ArrayList<Project> myOpenProjectList(int userNo) {
	
		return mDao.myOpenProjectList(userNo);
	}


	@Override
	public ArrayList<Project> myLikePRJList(int userNo) {
		
		return mDao.myLikePRJList(userNo);
	}


	@Override
	public ArrayList<Report> myReportList(int userNo) {
		
		return mDao.myReportList(userNo);
	}


	@Override
	public ArrayList<Report> myReportReplyList(int userNo) {
		
		return mDao.myReportReplyList(userNo);
	}


}
