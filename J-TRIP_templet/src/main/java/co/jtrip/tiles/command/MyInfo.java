package co.jtrip.tiles.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;

public class MyInfo implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// myPage 회원정보 수정
		return "myPage/myInfo";
	}

}
