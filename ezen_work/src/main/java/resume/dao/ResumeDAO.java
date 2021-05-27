package resume.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ResumeDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	//이력서등록
	public String write(String title, String age, String tall, String weight, String career, String achieve, String loc,
			String logtime) {
		Map<String, String>map = new HashMap<String, String>();
		map.put("title", title);
		map.put("age", age);
		map.put("tall", tall);
		map.put("weight", weight);
		map.put("career", career);
		map.put("achieve", achieve);
		map.put("loc", loc);
		map.put("logtime", logtime);
		return sqlSession.selectOne("mybatis.resumeMapper.write",map);
	}
}
