package notice.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import notice.bean.NoticeDTO;

@Repository
public class NoticeDAO {
	@Autowired
	SqlSessionTemplate sqlSession;

	// 저장
	public int register(NoticeDTO dto) {
		return sqlSession.insert("mybatis.noticeMapper.register", dto);
	}

	// 목록보기
	public List<NoticeDTO> noticeList(int startNum, int endNum) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sqlSession.selectList("mybatis.noticeMapper.noticeList", map);
	}

	// 전체데이터 갯수 구하기
	public int getTotalA() {
		return sqlSession.selectOne("mybatis.noticeMapper.getTotal");
	}
	
	// 조회수 증가하기
	public int updateHit(int seq) {
		return sqlSession.update("mybatis.noticeMapper.updateHit", seq);
	}
}