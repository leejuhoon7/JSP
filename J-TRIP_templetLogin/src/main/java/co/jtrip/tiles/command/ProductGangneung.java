package co.jtrip.tiles.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;

public class ProductGangneung implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 강릉 패키지 상세 페이지
		return "product/productGangneung";
	}

}
