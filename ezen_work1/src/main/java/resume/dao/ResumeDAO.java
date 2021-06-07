package resume.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resume.bean.ResumeDTO;

@Repository
public class ResumeDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	//이력서 등록
	public int resumeWrite(ResumeDTO dto) {
		return sqlSession.insert("mybatis.resumeMapper.resumeWrite", dto);
	}
}
