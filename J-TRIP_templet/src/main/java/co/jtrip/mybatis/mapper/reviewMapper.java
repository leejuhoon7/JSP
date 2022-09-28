package co.jtrip.mybatis.mapper;

import java.util.List;

import co.jtrip.review.service.ReviewVO;

public interface reviewMapper {
	List<ReviewVO> reviewSelectList();
	ReviewVO reviewSelect(ReviewVO vo);  
	int reviewInsert(ReviewVO vo);
	int reviwUpdate(ReviewVO vo);
	int reivewDelete(ReviewVO vo);

}
