package com.dodream.spring.project.model.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dodream.spring.common.Pagination;
import com.dodream.spring.common.model.vo.PageInfo;
import com.dodream.spring.project.model.dao.ProjectDao;
import com.dodream.spring.project.model.vo.FilteringList;
import com.dodream.spring.project.model.vo.Like;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.project.model.vo.Reward;

@Service("pService")
public class ProjectServiceImpl implements ProjectService {
	/// 공동사용
	
	@Autowired
	private ProjectDao pDao;

	@Override
	public Project selectProject(int pNo) {
		Project prj = pDao.selectProject(pNo);
		if ( prj != null ) { // 프로젝트가 성공적으로 조회되면 조회수를 1올린다
			pDao.updatePrjCount(pNo);
			
			int goal = prj.getpGoal();
			String comma_goal = String.format("%,d", goal);
			prj.setpCommaGoal(comma_goal);
		}
		return prj;
	}

	@Override
	public ArrayList<Project> selectPrjList(FilteringList filter, int currentPage) {
		
		// 진행중/진행완료 상태의 프로젝트 갯수 조회
		int listCount = pDao.countList();
		
		// 프로젝트 페이징 처리
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		// 목록 조회 후 리턴
		ArrayList<Project> pList = pDao.selectPrjList(filter, pi);
		return pList;
	}

	@Override
	public int createProject() {
		return pDao.createProject();
	}
	
	@Override
	public int selectThisProject() {
		return pDao.selectThisProject();
	}
	
	@Override
	public int insertReward(Reward reward) {
		return pDao.insertReward(reward);
	}

	@Override
	public int insertProject(Project project, MultipartFile uploadfile1, MultipartFile uploadfile2, MultipartFile uploadfile3, HttpServletRequest request) {
		String renameTImageName = null;
		String renamePImageName = null;
		String renameAImageName = null;
		if(uploadfile1!=null && !uploadfile1.getOriginalFilename().equals("")) {
			renameTImageName = renameFile(project, uploadfile1, 1); // 변경된 파일명 (1:썸네일, 2:메인, 3:아티스트)
			project.setpThumbImage((renameTImageName));
		}
		if(uploadfile2!=null && !uploadfile2.getOriginalFilename().equals("")) {
			renamePImageName = renameFile(project, uploadfile2, 2); // 변경된 파일명 (1:썸네일, 2:메인, 3:아티스트)
			project.setpMainImage((renamePImageName));
		}
		if(uploadfile3!=null && !uploadfile3.getOriginalFilename().equals("")) {
			renameAImageName = renameFile(project, uploadfile3, 3); // 변경된 파일명 (1:썸네일, 2:메인, 3:아티스트)
			project.setpArtistPFImage((renameAImageName));
		}
		int result = pDao.insertProject(project);
		if(result>0) {
			if(renameTImageName!=null)
				result = saveFile(renameTImageName, uploadfile1, request,1);
			if(renamePImageName!=null && result>0)
				result = saveFile(renamePImageName, uploadfile2, request,2);
			if(renameAImageName!=null && result>0)
				result = saveFile(renameAImageName, uploadfile2, request,3);
		}
		return result;
	}

	// 파일명 변경 메소드
	public String renameFile(Project project, MultipartFile file, int separator) {
		// "년월일시분초.확장자" 로 파일명 변경
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originFileName = file.getOriginalFilename();
		String renameFileName = "";
		if(separator==1)
			renameFileName = project.getpNo()+"_"+sdf.format(new Date())+"_thumb"+originFileName.substring(originFileName.lastIndexOf("."));
		if(separator==2)
			renameFileName = project.getpNo()+"_"+sdf.format(new Date())+"_main"+originFileName.substring(originFileName.lastIndexOf("."));
		if(separator==3)
			renameFileName = project.getpNo()+"_"+sdf.format(new Date())+"_artist"+originFileName.substring(originFileName.lastIndexOf("."));
		return renameFileName;
	}
	// 파일 저장 메소드
	public int saveFile(String renameFileName, MultipartFile uploadfile, HttpServletRequest request, int separator) {
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = "";
		if(separator==1)
			savePath = root + "\\images\\projectImg\\thumbnail";
		if(separator==2)
			savePath = root + "\\images\\projectImg\\mainImg";
		if(separator==3)
			savePath = root + "\\images\\projectImg\\artistImg";
		
		File folder = new File(savePath);
		// 만약 해당 폴더가 없는경우
		if(!folder.exists()) folder.mkdir(); // 폴더 생성
		
		String filePath = folder + "\\" + renameFileName;
		
		// 파일 저장 성공 여부(성공 1, 실패0)
		int result = 0;
		try {
			uploadfile.transferTo(new File(filePath));
			// 업로드된 파일을 filePath에 지정된 경로 + 파일명으로 저장하겠다.
			// -> IOException 예외 처리 필요
			result = 1;
		}catch(Exception e) {
			System.out.println("파일 전송 에러" + e.getMessage());
		}
		return result;
	}
	
	@Override
	public ArrayList<Reward> selectRewardList(String rewardStr) {
		String[] rewardTmp = rewardStr.split("/");
		ArrayList<String> rewardList = new ArrayList<>(Arrays.asList(rewardTmp));
		return pDao.selectRewardList(rewardList);
	}

	@Override
	public Project selectProjectS(int pNo) {
		return pDao.selecProjectS(pNo);
	}

	@Override
	public int insertLikeProject(Like like, int status) {
		int result = 0;
		if ( status == 1 ) {
			result = pDao.insertLikeProject(like);
		} else if ( status == 0 ) {
			result = pDao.deleteLikeProject(like);
		}
		return result;
	}

	@Override
	public ArrayList<Project> selectMainList(int userNo) {
		return pDao.selectMainList(userNo);
	}



}
