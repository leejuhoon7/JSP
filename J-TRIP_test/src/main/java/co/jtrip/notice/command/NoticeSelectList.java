package co.jtrip.notice.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.notice.service.NoticeService;
import co.jtrip.notice.service.NoticeVO;
import co.jtrip.notice.serviceimpl.NoticeServiceImpl;

public class NoticeSelectList implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		List<NoticeVO> list = new ArrayList<>();

		NoticeService dao = new NoticeServiceImpl();
		list = dao.NoticeSelectList();
		request.setAttribute("list", list);
		
		return "Notice/NoticeSelectList";
		
	}

}
