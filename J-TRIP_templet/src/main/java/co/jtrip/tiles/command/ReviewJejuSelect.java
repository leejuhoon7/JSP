package co.jtrip.tiles.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;

public class ReviewJejuSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 리뷰 제주 상세페이지
		return "reviewJeju/reviewJejuSelect";
	}

}
