package co.jtrip.qna.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.qna.service.QNAService;
import co.jtrip.qna.service.QNAVO;
import co.jtrip.qna.serviceImpl.QNAServiceImpl;

public class QNASelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		List<QNAVO> list = new ArrayList<>();

		QNAService dao = new QNAServiceImpl();
		list = dao.QNASelectList();
		
		System.out.println(list);
		request.setAttribute("list", list);
		
		return "mypage/QNASelectList";
		
	}

}
