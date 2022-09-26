package co.jtrip.qna.service;

import java.util.List;

public interface QNAService {
	
	List<QNAVO> QNASelectList(); // 멤버 전체 select

	QNAVO QNASelect(QNAVO vo); // 한명 select, 로그인 할 때도 사용한다.

}
