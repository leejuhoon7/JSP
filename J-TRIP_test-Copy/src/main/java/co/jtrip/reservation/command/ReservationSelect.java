package co.jtrip.reservation.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.reservation.service.ReservationService;
import co.jtrip.reservation.service.ReservationVO;
import co.jtrip.reservation.serviceimpl.ReservationServiceImpl;

public class ReservationSelect implements Command {
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 공지사항 상세보기
		ReservationService dao = new ReservationServiceImpl();
		ReservationVO vo = new ReservationVO();
		
		vo.setMemberId(request.getParameter("memberId"));

		ReservationVO resultVO = dao.ReservationSelect(vo);
		if (resultVO != null) {
			dao.ReservationSelect(vo);
			request.setAttribute("vo", resultVO);
		}
		return "mypage/ReservationSelect";
	}

}
