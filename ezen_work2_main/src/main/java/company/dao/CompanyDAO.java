package company.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import company.bean.CompanyDTO;
import mainForm.bean.MainFormDTO;
import member.bean.MemberDTO;

@Repository
public class CompanyDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int memberWrite(CompanyDTO dto) {
		return sqlSession.insert("mybatis.companyMapper.memberWrite",dto);
	}
	
	//id 중복검사
	public boolean isExistId(String id) {
		boolean exist = false;
		if(sqlSession.selectOne("mybatis.companyMapper.isExistId", id) != null) {
			exist = true;
		}
		return exist;
	}
	// 로그인
	public String login(String id, String pw) {	
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);
		return sqlSession.selectOne("mybatis.companyMapper.login", map);
	}
	
	// 회원1명 데이터 확인
	public CompanyDTO getMember(String id) {
		return sqlSession.selectOne("mybatis.companyMapper.getMember", id);
	}
	//회원정보 수정
	public int memberModify(CompanyDTO dto) {		
		return sqlSession.update("mybatis.companyMapper.memberModify", dto);	
	}
	//회원탈퇴
	public int delete(String id) {
		return sqlSession.delete("mybatis.companyMapper.delete", id);
	}	
	// 목록보기
	public List<MainFormDTO> resumeList(String cname){
		return sqlSession.selectList("mybatis.companyMapper.resumeList", cname);
	}
	// 총 데이터 갯수 구하기
	public int getTotalA(String id) {
		return sqlSession.selectOne("mybatis.companyMapper.getTotalA", id);
	}
	// 조회수 증가하기
	public int updateHit(int seq) {
		return sqlSession.update("mybatis.companyMapper.updateHit", seq);
	}
	// 상세보기
	public MainFormDTO resumeView(int seq) {
		return sqlSession.selectOne("mybatis.companyMapper.resumeView",seq);
	}
	// 회원1명 데이터 확인
	public MemberDTO getMember1(String id) {
		return sqlSession.selectOne("mybatis.companyMapper.getMember1", id);
	}
	//기업 아이디 찾기
	public String findId(String cname, String email) {
		Map<String, String>map = new HashMap<String, String>();
		map.put("cname", cname);
		map.put("email", email);
		return sqlSession.selectOne("mybatis.companyMapper.findId1", map);
	}
	//패스워드찾기
	public String findPwd(String id, String cname, String email) {
		Map<String, String>map = new HashMap<String, String>();
		map.put("id", id);
		map.put("cname", cname);
		map.put("email", email);
		return sqlSession.selectOne("mybatis.companyMapper.findPw1", map);
	}
}
