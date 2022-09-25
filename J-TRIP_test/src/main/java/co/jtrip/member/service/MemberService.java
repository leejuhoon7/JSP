package co.jtrip.member.service;

import java.util.List;

public interface MemberService {

	List<MemberVO> memberSelectList(); // 멤버 전체 select

	MemberVO memberSelect(MemberVO vo); // 한명 select, 로그인 할 때도 사용한다.

	int memberInsert(MemberVO vo); // 데이터 추가

	int memberUpdate(MemberVO vo); // 데이터 갱신

	int memberDelete(MemberVO vo); // 데이터 삭제

	boolean isMemberId(String id); // 아이디 중복 체크.
}
