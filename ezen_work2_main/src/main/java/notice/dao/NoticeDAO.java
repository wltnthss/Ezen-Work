package notice.dao;

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
	public int noticeWrite(NoticeDTO dto) {
		return sqlSession.insert("mybatis.noticeMapper.noticeWrite", dto);
	}
	// 삭제
	public int noticeDelete(int seq) {
		return sqlSession.delete("mybatis.noticeMapper.noticeDelete", seq);
	}
	/*
	// 수정할 내용 불러오기
	public NoticeDTO noticeModify(int seq) {
		return sqlSession.selectOne("mybatis.noticeMapper.noticeModify", seq);
	}
	
	// 공지사항 내용 수정하기
	public int noticeModifydo(NoticeDTO noticeDTO) {
		return sqlSession.update("mybatis.noticeMapper.noticeModifydo", noticeDTO);
	}
	*/
	// 상세보기
	public NoticeDTO noticeView(int seq) {
		return sqlSession.selectOne("mybatis.noticeMapper.noticeView", seq);
	}
	
	// 목록보기
	public List<NoticeDTO> noticeList(int startNum, int endNum) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sqlSession.selectList("mybatis.noticeMapper.noticeList", map);
	}
	
	// 총 게시물 개수
	public int getTotalA(){
		return sqlSession.selectOne("mybatis.noticeMapper.getTotalA");
	}
	
	// 조회수 증가하기
	public int updateCount(int seq) {
		return sqlSession.update("mybatis.noticeMapper.updateCount", seq);
	}
	
	
}