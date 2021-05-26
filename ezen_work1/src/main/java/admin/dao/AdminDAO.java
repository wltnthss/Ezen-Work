package admin.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import admin.bean.AdminDTO;

@Repository
public class AdminDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//로그인
	public String login(String id, String pwd) {
		Map<String, String>map = new HashMap<String,String>();
		map.put("id", id);
		map.put("pwd", pwd);
		return sqlSessionTemplate.selectOne("mybatis.adminMapper.login",map);
	}
}
