package talk.dao;

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
		
	
}
