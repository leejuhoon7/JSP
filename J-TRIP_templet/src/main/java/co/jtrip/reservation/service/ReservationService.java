package co.jtrip.reservation.service;

import java.util.List;

public interface ReservationService {
	
	List<ReservationVO> ReservationSelectList(); // 멤버 전체 select

	ReservationVO ReservationSelect(ReservationVO vo); // 한명 select, 로그인 할 때도 사용한다.
}
