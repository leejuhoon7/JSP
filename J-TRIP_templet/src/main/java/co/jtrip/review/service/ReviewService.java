package co.jtrip.review.service;

import java.util.List;

public interface ReviewService {
	List<ReviewVO> reviewSelectList();
	ReviewVO reviewSelect(ReviewVO vo);  
	int reviewInsert(ReviewVO vo);
	int reviwUpdate(ReviewVO vo);
	int reviewDelete(ReviewVO vo);
	
	//boolean isIdCheck(String id);  

}
