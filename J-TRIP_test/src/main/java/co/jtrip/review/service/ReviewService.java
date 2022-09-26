package co.jtrip.review.service;

import java.util.List;


public interface ReviewService {
	List<ReviewVO> ReviewSelectList(); // 멤버 전체 select

	ReviewVO ReviewSelect(ReviewVO vo); // 한명 select, 로그인 할 때도 사용한다.
}
