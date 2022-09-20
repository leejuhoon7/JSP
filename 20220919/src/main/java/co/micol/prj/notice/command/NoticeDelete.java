package co.micol.prj.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.notice.service.NoticeService;
import co.micol.prj.notice.service.NoticeVO;
import co.micol.prj.notice.service.Impl.NoticeServiceImpl;

public class NoticeDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		NoticeService dao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		String viewPage = "notice/noticeError";
		int n = dao.noticeDelete(vo);
		if(n != 0) {
			
			request.setAttribute("vo", vo);
			viewPage = "notice/noticeSelect";
		}else {
			request.setAttribute("message", "데이터 삭제!");
		}
		
		return viewPage;
	}

}
