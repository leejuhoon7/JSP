package co.jtrip.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.member.service.MemberService;
import co.jtrip.member.service.MemberVO;
import co.jtrip.member.serviceimpl.MemberServiceImpl;

public class MemberInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 멤버 추가

		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPassword(request.getParameter("memberPassword"));
		vo.setMemberName(request.getParameter("memberName"));
		vo.setMemberName(request.getParameter("memberAddress"));
		vo.setMemberName(request.getParameter("memberEmail"));
		vo.setMemberTel(request.getParameter("memberTel"));
		vo.setMemberAuthor(request.getParameter("memberAuthor"));
		vo.setMemberAuthor(request.getParameter("memberFavorite"));
		
		return  "main.do";
	}
}




