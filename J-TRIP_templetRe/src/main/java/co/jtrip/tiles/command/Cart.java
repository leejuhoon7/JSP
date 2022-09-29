package co.jtrip.tiles.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;

public class Cart implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 장바구니
		return "product/cart";
	}

}
