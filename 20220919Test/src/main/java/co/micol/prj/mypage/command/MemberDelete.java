package co.micol.prj.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.mypage.service.MemberService;
import co.micol.prj.mypage.service.MemberVO;
import co.micol.prj.mypage.serviceimpl.MemberServiceImpl;

public class MemberDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberId(request.getParameter("id"));

		dao.memberDelete(vo);

		return "myPage/MemberSelectList";

	}

}
