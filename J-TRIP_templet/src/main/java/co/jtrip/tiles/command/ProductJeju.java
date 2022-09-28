package co.jtrip.tiles.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;

public class ProductJeju implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 제주 패키지 상세페이지
		return "product/productJeju";
	}

}
