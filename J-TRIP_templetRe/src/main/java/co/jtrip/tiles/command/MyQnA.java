package co.jtrip.tiles.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;

public class MyQnA implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// myPage myQnA 
		return "myPage/myQnA";
	}

}
