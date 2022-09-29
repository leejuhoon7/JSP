package co.micol.prj.mypage.service;

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
	private String memberTel;
	private String memberAuthor;
}
