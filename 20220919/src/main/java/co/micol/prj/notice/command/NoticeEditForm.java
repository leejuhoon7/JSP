package co.micol.prj.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.notice.service.NoticeService;
import co.micol.prj.notice.service.NoticeVO;
import co.micol.prj.notice.service.Impl.NoticeServiceImpl;

public class NoticeEditForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 수정 폼
		NoticeService dao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		System.out.println(request.getParameter("id"));
		vo.setNoticeId(Integer.valueOf(request.getParameter("id")));
		vo = dao.noticeSelect(vo);
		request.setAttribute("vo", vo);
		
		return "notice/noticeEditForm";
	}

}
