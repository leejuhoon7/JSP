package co.jtrip.qna.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.jtrip.common.DataSource;
import co.jtrip.mybatis.mapper.QNAMapper;
import co.jtrip.qna.service.QNAService;
import co.jtrip.qna.service.QNAVO;

public class QNAServiceImpl implements QNAService {

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private QNAMapper map = sqlSession.getMapper(QNAMapper.class);
	
	@Override
	public List<QNAVO> QNASelectList() {

		return map.QNASelectList();
	}

	@Override
	public QNAVO QNASelect(QNAVO vo) {

		return map.QNASelect(vo);
	}
}
