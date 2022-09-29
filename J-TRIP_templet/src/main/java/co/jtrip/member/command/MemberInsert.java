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
		String fullEmail = "";
		fullEmail += request.getParameter("emailId");
		fullEmail += request.getParameter("textEmail");

		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPassword(request.getParameter("memberPassword"));
		vo.setMemberName(request.getParameter("memberName"));
		vo.setMemberName(request.getParameter("memberAddress"));
		vo.setMemberEmail(fullEmail);
		vo.setMemberName(request.getParameter("memberEmail"));
		vo.setMemberTel(request.getParameter("memberTel"));
		vo.setMemberAuthor(request.getParameter("memberAuthor"));
		vo.setMemberAuthor(request.getParameter("memberFavorite"));

		String viewPage = null;

		if (dao.memberInsert(vo) != 0) {
			request.setAttribute("message", "정상적으로 회원가입이 완료되었습니다.");
			viewPage = "home.do";
		} else {
			request.setAttribute("message", "회원가입 실패");
			viewPage = "member/memberMessage";
		}

		return viewPage;
	}
}
