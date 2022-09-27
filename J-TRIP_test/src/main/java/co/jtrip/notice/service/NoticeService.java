package co.jtrip.notice.service;

import java.util.List;

public interface NoticeService {

	List<NoticeVO> NoticeSelectList(); // 멤버 전체 select

	NoticeVO NoticeSelect(NoticeVO vo); // 한명 select, 로그인 할 때도 사용한다.

}
