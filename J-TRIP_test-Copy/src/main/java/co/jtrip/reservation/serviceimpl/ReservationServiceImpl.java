package co.jtrip.reservation.serviceimpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.jtrip.common.DataSource;
import co.jtrip.mybatis.mapper.ReservationMapper;
import co.jtrip.reservation.service.ReservationService;
import co.jtrip.reservation.service.ReservationVO;


public class ReservationServiceImpl implements ReservationService{

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ReservationMapper map = sqlSession.getMapper(ReservationMapper.class);
	
	@Override
	public List<ReservationVO> ReservationSelectList() {
		return map.ReservationSelectList();
	}
	@Override
	public ReservationVO ReservationSelect(ReservationVO vo) {
		return map.ReservationSelect(vo);
	}
}
