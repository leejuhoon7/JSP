package co.jtrip.mybatis.mapper;

import java.util.List;

import co.jtrip.member.service.MemberVO;
import co.jtrip.qna.service.QNAVO;

public interface QNAMapper {
	
	List<QNAVO> QNASelectList();

	QNAVO QNASelect(QNAVO vo);
	
}
