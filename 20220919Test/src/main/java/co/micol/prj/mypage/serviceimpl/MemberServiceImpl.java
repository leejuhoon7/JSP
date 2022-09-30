package co.micol.prj.mypage.serviceimpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.micol.prj.common.DataSource;
import co.micol.prj.mypage.mapper.MemberMapper;
import co.micol.prj.mypage.service.MemberService;
import co.micol.prj.mypage.service.MemberVO;

public class MemberServiceImpl implements MemberService {
	
	// Mybatis Mapper와 연결
	
	private SqlSession sqlSession = DataSource.getSession().openSession(true);
	private MemberMapper map = sqlSession.getMapper(MemberMapper.class);
	@Override
	public MemberVO memberSelect(MemberVO vo) {
		return map.memberSelect(vo);
	}
	@Override
	public int memberUpdate(MemberVO vo) {
		return map.memberUpdate(vo);
	}
	@Override
	public List<MemberVO> memberSelectList() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int memberInsert(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int memberDelete(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
}
