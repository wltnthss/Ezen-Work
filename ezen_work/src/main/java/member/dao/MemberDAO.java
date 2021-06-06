package member.dao;

import java.util.HashMap;
import java.util.List;
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
	
	//회사회원1명 데이터 확인
	public String getCmember(String id) {
		return sqlSession.selectOne("mybatis.memberMapper.getCmember", id);
	}
	//회원정보 수정
	public int modify(MemberDTO dto) {		
		return sqlSession.update("mybatis.memberMapper.modify", dto);	
	}
	//이력서 데이터 확인
	public ResumeDTO getResume(String id) {
		return sqlSession.selectOne("mybatis.memberMapper.getResume", id);
	}	
	// 목록보기
	public List<ResumeDTO> resumeList(int startNum, int endNum){
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sqlSession.selectList("mybatis.memberMapper.resumeList", map);
	}
	// 총 데이터 갯수 구하기
	public int getTotalA() {
		return sqlSession.selectOne("mybatis.memberMapper.getTotalA");
	}
	// 이력서 삭제
	public int resumeDelete(int seq) {
		return sqlSession.delete("mybatis.memberMapper.resumeDelete", seq);
	}
	// 이력서 상세보기
	public ResumeDTO resumeView(int seq) {
		return sqlSession.selectOne("mybatis.memberMapper.resumeView", seq);
	}
	// 이력서 수정 : modify
	public int resumeModify(ResumeDTO dto) {		
		return sqlSession.update("mybatis.memberMapper.resumeModify", dto);
	}
	
	public String company_login(String id, String pwd) {
		Map<String, String>map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		return sqlSession.selectOne("mybatis.memberMapper.company_login", map);
	}
}
