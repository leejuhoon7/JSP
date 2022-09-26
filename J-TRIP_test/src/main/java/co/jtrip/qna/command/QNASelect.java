package co.jtrip.qna.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.qna.service.QNAService;
import co.jtrip.qna.service.QNAVO;
import co.jtrip.qna.serviceImpl.QNAServiceImpl;

public class QNASelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 공지사항 상세보기
		QNAService dao = new QNAServiceImpl();
		QNAVO vo = new QNAVO();
		
		vo.setMemberId(request.getParameter("memberId"));

		QNAVO resultVO = dao.QNASelect(vo);
		if (resultVO != null) {
			dao.QNASelect(vo);
			request.setAttribute("vo", resultVO);
		}
		return "QNA/QNASelect";
	}
}
