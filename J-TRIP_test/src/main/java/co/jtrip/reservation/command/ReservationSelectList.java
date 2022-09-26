package co.jtrip.reservation.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.reservation.service.ReservationService;
import co.jtrip.reservation.service.ReservationVO;
import co.jtrip.reservation.serviceimpl.ReservationServiceImpl;

public class ReservationSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		List<ReservationVO> list = new ArrayList<>();

		ReservationService dao = new ReservationServiceImpl();
		list = dao.ReservationSelectList();
		request.setAttribute("list", list);

		return "Reservation/ReservationSelectList";
	}

}
