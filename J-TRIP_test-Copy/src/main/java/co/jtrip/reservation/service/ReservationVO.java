package co.jtrip.reservation.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class ReservationVO{

	private String reservationNo;
	private int productNo;
	private String MemberId;
	private String productName;
	private int reservationPerson;
	private int totalPrice;
	private String cardName;
	private int cardPay;
	private String cashAccount;
	private String cashUserName;
	private int cashPrice;

}
