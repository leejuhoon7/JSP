package co.jtrip.tiles.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.member.service.MemberService;
import co.jtrip.member.service.MemberVO;
import co.jtrip.member.serviceimpl.MemberServiceImpl;

public class MyInfo implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// myPage 회원정보 수정

		// 멤버 정보 수정
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberId(request.getParameter("memberId"));
		System.out.println("아이디: " +vo.getMemberId());
		vo.setMemberPassword(request.getParameter("memberPassword"));
		vo.setMemberName(request.getParameter("memberName"));
		vo.setMemberAddress(request.getParameter("memberAddress"));
		vo.setMemberEmail(request.getParameter("memberEmail"));
		vo.setMemberTel(request.getParameter("memberTel"));

		
		System.out.println("myInfo의 vo : " + vo);
		dao.memberUpdate(vo);

		request.setAttribute("vo", vo);
		return "myPage/myInfo";
	}

}
