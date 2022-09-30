package co.jtrip.tiles.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;

public class ProductBusan implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 부산 패키지 상세 내용
		return "product/productBusan";
	}

}
