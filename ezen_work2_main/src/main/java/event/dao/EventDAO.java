package event.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import event.bean.EventDTO;

@Repository
public class EventDAO {
	@Autowired
	SqlSessionTemplate sqlSession;

	// 저장
	public int eventWrite(EventDTO dto) {
		return sqlSession.insert("mybatis.eventMapper.eventWrite", dto);
	}
	
	// 삭제
	public int eventDelete(int seq) {
		return sqlSession.delete("mybatis.eventMapper.eventDelete", seq);
	}
	/*
	// 수정할 내용 불러오기
	public EventDTO eventModify(int seq) {
		return sqlSession.selectOne("mybatis.eventMapper.eventModify", seq);
	}
	
	// 공지사항 내용 수정하기
	public int eventModifydo(EventDTO eventDTO) {
		return sqlSession.update("mybatis.eventMapper.eventModifydo", eventDTO);
	}
	*/
	// 상세보기
	public EventDTO eventView(int seq) {
		return sqlSession.selectOne("mybatis.eventMapper.eventView", seq);
	}
	
	// 목록보기
	public List<EventDTO> eventList(int startNum, int endNum) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sqlSession.selectList("mybatis.eventMapper.eventList", map);
	}
	
	// 총 게시물 개수
	public int getTotalA(){
		return sqlSession.selectOne("mybatis.eventMapper.getTotalA");
	}
	
	// 조회수 증가하기
	public int updateCount(int seq) {
		return sqlSession.update("mybatis.eventMapper.updateCount", seq);
	}
	
	
}