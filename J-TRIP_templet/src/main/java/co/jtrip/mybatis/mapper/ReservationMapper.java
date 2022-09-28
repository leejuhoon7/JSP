package co.jtrip.mybatis.mapper;

import java.util.List;

import co.jtrip.reservation.service.ReservationVO;


public interface ReservationMapper {
	
	List<ReservationVO> ReservationSelectList();

	ReservationVO ReservationSelect(ReservationVO vo);

}
