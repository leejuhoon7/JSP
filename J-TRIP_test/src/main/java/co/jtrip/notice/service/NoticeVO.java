package co.jtrip.notice.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class NoticeVO {
	
	private String noticeNO;
	private String noticeTitle;
	private Date noticeDate;
	private String noticeContent;
}
