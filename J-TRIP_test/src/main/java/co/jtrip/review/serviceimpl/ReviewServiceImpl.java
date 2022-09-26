package co.jtrip.review.serviceimpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.jtrip.common.DataSource;
import co.jtrip.mybatis.mapper.ReviewMapper;
import co.jtrip.review.service.ReviewService;
import co.jtrip.review.service.ReviewVO;

public class ReviewServiceImpl implements ReviewService{

	
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ReviewMapper map = sqlSession.getMapper(ReviewMapper.class);
	@Override
	public List<ReviewVO> ReviewSelectList() {
		return map.ReviewSelectList();
	}
	@Override
	public ReviewVO ReviewSelect(ReviewVO vo) {
		return map.ReviewSelect(vo);
	}
	

	
}
