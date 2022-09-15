package co.micol.prj.member.serviceImpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import co.micol.prj.common.DataSource;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.service.MemberVO;

public class MemberServiceImpl implements MemberService {
	private DataSource dao = new DataSource(); // 데이터 연결객체 생성
	private PreparedStatement psmt;
	private ResultSet rs;

	@Override
	public List<MemberVO> memberSelectList() {
		// 전체 멤버 목록 가져오기.
		List<MemberVO> list = new ArrayList<>();
		MemberVO vo;
		String sql = "SELECT * FROM MEMBER";
		try {
			psmt = dao.conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new MemberVO();
				vo.setMemberId(rs.getString("member_id"));
				vo.setMemberPassword(rs.getString("member_password"));
				vo.setMemberName(rs.getString("member_name"));
				vo.setMemberTel(rs.getString("member_tel"));
				vo.setMemberAuthor(rs.getString("member_author"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	@Override
	public MemberVO memberSelect(MemberVO vo) {
		// 한명의 멤버를 조회한다.
		String sql = "select * from member where member_id = ?";
		try {
			psmt = dao.conn.prepareStatement(sql);
			psmt.setString(1, vo.getMemberId());
			rs = psmt.executeQuery(); // 결과 set을 리턴.
			if (rs.next()) {
				vo.setMemberPassword(rs.getString("member_password"));
				vo.setMemberName(rs.getString("member_name"));
				vo.setMemberTel(rs.getString("member_tel"));
				vo.setMemberAuthor(rs.getString("member_author"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}

	@Override
	public int memberInsert(MemberVO vo) {
		// 한명의 데이터 추가
		int result = 0;
		String sql = "insert into member values(?,?,?,?,?)";
		try {
			psmt = dao.conn.prepareStatement(sql);
			psmt.setString(1, vo.getMemberId());
			psmt.setString(2, vo.getMemberPassword());
			psmt.setString(3, vo.getMemberName());
			psmt.setString(4, vo.getMemberTel());
			psmt.setString(5, vo.getMemberAuthor());
			result = psmt.executeUpdate(); // 성공하면 1, 실패하면 0을 리턴.
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		// 한명의 데이터 변경, 아이디를 제외한 모든 값이 변경 가능 함.
		int result = 0;
		String sql = "update member set member_password=?, member_name=?, member_tel=?, member_author=?"
				+ "where member_id=?";
		try {
			psmt = dao.conn.prepareStatement(sql);
			psmt.setString(1, vo.getMemberPassword());
			psmt.setString(2, vo.getMemberName());
			psmt.setString(3, vo.getMemberTel());
			psmt.setString(4, vo.getMemberAuthor());
			psmt.setString(5, vo.getMemberId());
			result = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}

	@Override
	public int memberDelete(MemberVO vo) {
		// 멤버 삭제
		int result = 0;
		String sql = "delete from member where member_id=?";
		try {
			psmt = dao.conn.prepareStatement(sql);
			psmt.setString(1, vo.getMemberId());
			result = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}

	@Override
	public boolean isMemberId(String id) {
		// 아이디 중복 체크. 존재하면 false리턴.
		boolean result = true;
		String sql = "select member_id from member where member_id=?";
		try {
			psmt = dao.conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if(rs.next()) {
				result = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}

	private void close() { // DBMS와 연결을 끊어준다.
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (dao.conn != null)
				dao.conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
