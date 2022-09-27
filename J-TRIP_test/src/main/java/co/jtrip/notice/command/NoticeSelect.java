package co.jtrip.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.notice.service.NoticeService;
import co.jtrip.notice.service.NoticeVO;
import co.jtrip.notice.serviceimpl.NoticeServiceImpl;

public class NoticeSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 공지사항 상세보기
		NoticeService dao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		vo.setNoticeTitle((request.getParameter("noticeNo")));

		NoticeVO resultVO = dao.NoticeSelect(vo);
		if (resultVO != null) {
			dao.NoticeSelect(vo);
			request.setAttribute("vo", resultVO);
		}
		return "Notice/NoticeSelect";
	}

}
