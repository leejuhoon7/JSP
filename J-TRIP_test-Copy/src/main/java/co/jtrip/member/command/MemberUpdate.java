package co.jtrip.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.member.service.MemberService;
import co.jtrip.member.service.MemberVO;
import co.jtrip.member.serviceimpl.MemberServiceImpl;


public class MemberUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 멤버 정보 수정
				MemberService dao = new MemberServiceImpl();
				MemberVO vo = new MemberVO();
				vo.setMemberId(request.getParameter("memberId"));
				vo.setMemberPassword(request.getParameter("memberPassword"));
				vo.setMemberName(request.getParameter("memberName"));
				vo.setMemberAddress(request.getParameter("memberAddress"));
				vo.setMemberEmail(request.getParameter("memberEmail"));
				vo.setMemberTel(request.getParameter("memberTel"));
								
				dao.memberUpdate(vo);
				return "member/memberSelectList";
	}

}
