package talk.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import talk.bean.TalkDTO;

@Repository
public class TalkDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//한줄톡 입력
	public int talk_write(TalkDTO dto) {
		return sqlSessionTemplate.insert("mybatis.talkMapper.talk_write", dto);
	}
	
	//한줄톡 입력
	public List<TalkDTO> talk_list(int startNum, int endNum) {
		Map<String, Integer>map = new HashMap<String, Integer>();
		map.put("startNum",startNum );
		map.put("endNum",endNum );
		return sqlSessionTemplate.selectList("mybatis.talkMapper.talk_list", map);
	}
	
	//한줄톡 입력
	public int talk_getTotalA() {
		return sqlSessionTemplate.selectOne("mybatis.talkMapper.talk_getTotalA");
	}
		
	//좋아요 추가
	public int talk_good_count(int seq) {
		return sqlSessionTemplate.update("mybatis.talkMapper.talk_good_count",seq);
	}
	
	//싫어요 추가
	public int talk_bad_count(int seq) {
		return sqlSessionTemplate.update("mybatis.talkMapper.talk_bad_count",seq);
	}
	
	//한줄톡 삭제
	public int talk_del(int seq) {
		return sqlSessionTemplate.delete("mybatis.talkMapper.talk_del",seq);
	}
	
}
