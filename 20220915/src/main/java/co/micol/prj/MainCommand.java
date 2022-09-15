package co.micol.prj;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;

public class MainCommand implements Command {

	@Override
	public String exec(HttpServletRequest rquest, HttpServletResponse response) {
		// 처음 시작하는 페이지를 오픈한다.
		return "main/main";
	}

}
