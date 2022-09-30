package co.micol.prj.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.mypage.service.MemberService;
import co.micol.prj.mypage.service.MemberVO;
import co.micol.prj.mypage.serviceimpl.MemberServiceImpl;

public class MemberEditForm implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("MemberEditForm conn");
		
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberId("lee");
		

		System.out.println("vo "+vo);
		
		MemberVO resultVO = dao.memberSelect(vo);
		request.setAttribute("vo", resultVO);
		
		System.out.println("resultVO : "+resultVO);
		
		return "myPage/memberEditForm";
	}
	
}
