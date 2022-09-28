package co.jtrip.tiles.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;

public class ReviewGangneungSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 강릉 리뷰페이지 상세보기
		return "review/reviewGangneungSelect";
	}

}
