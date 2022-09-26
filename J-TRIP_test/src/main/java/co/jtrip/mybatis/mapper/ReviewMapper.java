package co.jtrip.mybatis.mapper;

import java.util.List;

import co.jtrip.review.service.ReviewVO;

public interface ReviewMapper {

	List<ReviewVO> ReviewSelectList();

	ReviewVO ReviewSelect(ReviewVO vo);
}
