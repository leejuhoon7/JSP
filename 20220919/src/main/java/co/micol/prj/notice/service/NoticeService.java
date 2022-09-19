package co.micol.prj.notice.service;

import java.util.List;

public interface NoticeService {
	List<NoticeVO> noticeSelectList(); //전체목록
	NoticeVO noticeSelect(NoticeVO vo); //일부목록
	int noticeInsert(NoticeVO vo);
	int noticeUpdate(NoticeVO vo);
	int noticeDelete(NoticeVO vo);
	
	void noticeHitUpdate(int id);
	List<NoticeVO> notieceSearchList(String key, String val); // 게시글 검색
	
}
