package co.jtrip.review.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class ReviewVO {

	private int reviewNo;
	private String reviewTitle;
	private String memberId;
	private Date reviewDate;
	private String reviewContent;
	private String reviewScore;
	private String reviewImg;
	private String reviewImgDir;
	private String reviewHit;
}
