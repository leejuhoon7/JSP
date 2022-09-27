package co.jtrip.mybatis.mapper;

import java.util.List;

import co.jtrip.notice.service.NoticeVO;

public interface NoticeMapper {

	List<NoticeVO> NoticeSelectList();

	NoticeVO NoticeSelect(NoticeVO vo);
}
