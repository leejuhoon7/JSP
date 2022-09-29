package co.micol.prj.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;

public class MemberEdit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		
		
		return "myPage/MemberEdit";
	}

}
