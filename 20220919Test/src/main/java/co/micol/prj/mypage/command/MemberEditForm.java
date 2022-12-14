package co.micol.prj.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.common.Command;
import co.micol.prj.mypage.service.MemberService;
import co.micol.prj.mypage.service.MemberVO;
import co.micol.prj.mypage.serviceimpl.MemberServiceImpl;

public class MemberEditForm implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		String a = (String)session.getAttribute("id");
		
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		vo.setMemberId(a);
		
		MemberVO resultVO = dao.memberSelect(vo);
		request.setAttribute("vo", resultVO);
			
		return "myPage/memberEditForm";
	}
	
}
