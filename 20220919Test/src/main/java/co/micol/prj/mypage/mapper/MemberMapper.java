package co.micol.prj.mypage.mapper;

import co.micol.prj.mypage.service.MemberVO;

public interface MemberMapper {

	MemberVO memberSelect(MemberVO vo);
	int memberUpdate(MemberVO vo);
	
}
