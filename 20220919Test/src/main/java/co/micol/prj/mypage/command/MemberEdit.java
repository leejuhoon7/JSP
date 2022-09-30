package co.micol.prj.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.mypage.service.MemberService;
import co.micol.prj.mypage.service.MemberVO;
import co.micol.prj.mypage.serviceimpl.MemberServiceImpl;

public class MemberEdit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		String viewPage = "myPage/memberError";
		MemberService dao = new MemberServiceImpl();
	
		MemberVO vo = new MemberVO();
		
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPassword(request.getParameter("memberPassword"));
		vo.setMemberName(request.getParameter("memberName"));
		vo.setMemberTel(request.getParameter("memberTel"));
		vo.setMemberAuthor(request.getParameter("memberAuthor"));
		
		System.out.println("MemberEdit "+ vo);
		int result = dao.memberUpdate(vo);
		System.out.println("MemberEdit "+ result);
		
		if(result != 0) {
			MemberVO resultVO = dao.memberSelect(vo);
			System.out.println("MemberEdit "+ resultVO);
			request.setAttribute("vo", resultVO);
			viewPage = "myPage/memberSelect";
			
		} else {
			request.setAttribute("message", "정보수정에 실패했어요!!");
		}
		
		return viewPage;
	}

}
