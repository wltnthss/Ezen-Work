package company.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import company.bean.CompanyDTO;
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
}
