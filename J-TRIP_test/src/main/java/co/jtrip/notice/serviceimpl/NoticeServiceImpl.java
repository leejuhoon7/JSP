package co.jtrip.notice.serviceimpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.jtrip.common.DataSource;
import co.jtrip.mybatis.mapper.NoticeMapper;
import co.jtrip.notice.service.NoticeService;
import co.jtrip.notice.service.NoticeVO;

public class NoticeServiceImpl implements NoticeService{
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private NoticeMapper map = sqlSession.getMapper(NoticeMapper.class);
	
	@Override
	public List<NoticeVO> NoticeSelectList() {
		return map.NoticeSelectList();
	}
	@Override
	public NoticeVO NoticeSelect(NoticeVO vo) {
		return map.NoticeSelect(vo);
	}
}
}
