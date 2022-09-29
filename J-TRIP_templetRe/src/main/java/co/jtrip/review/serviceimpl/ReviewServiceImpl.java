package co.jtrip.review.serviceimpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.jtrip.common.DataSource;
import co.jtrip.mybatis.mapper.reviewMapper;
import co.jtrip.review.service.ReviewService;
import co.jtrip.review.service.ReviewVO;


public class ReviewServiceImpl implements ReviewService{

	
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private reviewMapper map = sqlSession.getMapper(reviewMapper.class);
	@Override
	public List<ReviewVO> reviewSelectList() {
		return map.reviewSelectList();
	}
	@Override
	public ReviewVO reviewSelect(ReviewVO vo) {
		return map.reviewSelect(vo);
	}
	@Override
	public int reviewInsert(ReviewVO vo) {
		return map.reviewInsert(vo);
	}
	@Override
	public int reviwUpdate(ReviewVO vo) {
		return map.reviwUpdate(vo);
	}
	@Override
	public int reviewDelete(ReviewVO vo) {
		return map.reivewDelete(vo);
	}
	

	
}
