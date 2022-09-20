package co.micol.prj.notice.command;

import java.io.File;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.micol.prj.common.Command;
import co.micol.prj.notice.service.NoticeService;
import co.micol.prj.notice.service.NoticeVO;
import co.micol.prj.notice.service.Impl.NoticeServiceImpl;

public class NoticeInsert implements Command { //cos 라이브러리를 사용할 때
	private String saveFolder ="C:\\fileUploadTest\\"; // 실제파일이 저장할 공간
	private String charactSet = "utf-8"; // 한글깨짐 방지
	private int maxSize = 1024 * 1024 * 1024; // 파일 최대사이즈
	
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 등록

		String filename ="";
		String originalFileName="";
		NoticeVO vo = new NoticeVO();
		NoticeService dao = new NoticeServiceImpl();
		try {
			MultipartRequest multi = 
					new MultipartRequest(request, saveFolder, maxSize, charactSet, new DefaultFileRenamePolicy());
			filename = multi.getFilesystemName("file"); // 물리적 위치에 파일저장
			originalFileName = multi.getOriginalFileName("file"); //실제파일명
			
			

			
			vo.setNoticeWriter(multi.getParameter("noticeWriter"));
			vo.setNoticeDate(Date.valueOf(multi.getParameter("noticeDate")));
			vo.setNoticeTitle(multi.getParameter("noticeTitle"));
			vo.setNoticeSubject(multi.getParameter("noticeSubject"));
			vo.setNoticeAttech(originalFileName);
			vo.setNoticeAttechDir(saveFolder + File.separator+filename);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		String viewPage = "notice/noticeError";
		
		

		// 첨부파일이 있을시 이곳에서 처리함
		int n = dao.noticeInsert(vo);
		if(n != 0) {
			viewPage = "noticeSelectList.do";
		} else {
			request.setAttribute("message", "게시글 등록이 실패했습니다.");
		}
		
		return viewPage;
	}

}
