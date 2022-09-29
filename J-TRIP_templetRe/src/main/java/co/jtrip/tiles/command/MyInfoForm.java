package co.jtrip.tiles.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import co.jtrip.common.Command;
import co.jtrip.member.service.MemberService;
import co.jtrip.member.service.MemberVO;
import co.jtrip.member.serviceimpl.MemberServiceImpl;

public class MyInfoForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		System.out.println("MyInfoForm도착");		
		vo.setMemberId(request.getParameter("memberId")); // jsp에서 name = id인,,,
		System.out.println("myInfoForm의 vo " + vo);
	
		vo = dao.memberSelect(vo);

		request.setAttribute("vo", vo);
		
		return "myPage/myInfo";
	}

}
