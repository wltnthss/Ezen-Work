package member.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import member.bean.MemberDTO;
import resume.bean.ResumeDTO;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	//회원가입
	public String register(String name, String id, String pwd, String gender, String email, String tel, String addr) {
		Map<String, String>map = new HashMap<String, String>();
		map.put("name", name);
		map.put("id", id);
		map.put("pwd", pwd);
		map.put("gender", gender);
		map.put("email", email);
		map.put("tel", tel);
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
	
	//회원1명 데이터 확인
	public MemberDTO getMember(String id) {
		return sqlSession.selectOne("mybatis.memberMapper.getMember", id);
	}
	
	//회원정보 수정
	public int modify(MemberDTO dto) {		
		return sqlSession.update("mybatis.memberMapper.modify", dto);	
	}
	
	//이력서 데이터 확인
	public ResumeDTO getresume(String id) {		
		return sqlSession.selectOne("mybatis.memberMapper.getresume", id);	
	}
	
}
