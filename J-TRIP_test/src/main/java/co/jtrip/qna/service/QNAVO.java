package co.jtrip.qna.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class QNAVO {

	private String memberId;
	private String QNANO;
	private String QNATitle;
	private Date QNADate;
	private String QNAContent;


}
