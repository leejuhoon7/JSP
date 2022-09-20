package co.micol.prj.notice.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.notice.service.NoticeService;
import co.micol.prj.notice.service.NoticeVO;
import co.micol.prj.notice.service.Impl.NoticeServiceImpl;

public class NoticeEdit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 수정
		NoticeService dao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		vo.setNoticeId(Integer.valueOf(request.getParameter("noticeId")));
		vo.setNoticeDate(Date.valueOf(request.getParameter("noticeDate")));
		vo.setNoticeTitle(request.getParameter("noticeTitle"));
		vo.setNoticeSubject(request.getParameter("noticeSubject"));
		//첨부파일 처리하고
		
		String viewPage = "notice/noticeError";
		int n = dao.noticeUpdate(vo);
		if(n != 0) {
			vo =dao.noticeSelect(vo);
			request.setAttribute("vo", vo);
			viewPage = "notice/noticeSelect"; // 수정 완료시 목록으로 돌아감
		}else {
			request.setAttribute("message", "데이터가 수정되지 않았습니다.");
		}
			
		return viewPage;
	}

}
