package co.jtrip.member.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberVO {
	private String memberId;
	private String memberPassword;
	private String memberName;
	private String memberAddress;
	private String memberEmail;
	private String memberTel;
	private String memberAuthor;
	private String memberFavorite;
}
