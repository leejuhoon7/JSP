package co.jtrip.tiles.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;

public class MyReviewList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// myReviewList
		return "myPage/myReviewList";
	}

}
