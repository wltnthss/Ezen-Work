package member.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	//회원가입
	public String register(String name, String id, String pwd, String gender, String email1, String email2, String tel1, String tel2, String tel3, String addr) {
		Map<String, String>map = new HashMap<String, String>();
		map.put("name", name);
		map.put("id", id);
		map.put("pwd", pwd);
		map.put("gender", gender);
		map.put("email1", email1);
		map.put("email2", email2);
		map.put("tel1", tel1);
		map.put("tel2", tel2);
		map.put("tel3", tel3);
		map.put("addr", addr);
		return sqlSession.selectOne("mybatis.memberMapper.register",map);
	}
	
	//id 중복검사
	public boolean isExistId(String id) {
		boolean exist = false;
		if(sqlSession.selectOne("mybatis.memberMapper.isExistId", id) != null) {
			exist = true;
		}
		return exist;
	}
	
	//로그인
	public String login(String id, String pwd) {
		Map<String, String>map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		return sqlSession.selectOne("mybatis.memberMapper.login", map);
	}
	
	
}
