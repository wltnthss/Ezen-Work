package admin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import admin.bean.AdminDTO;
import member.bean.MemberDTO;

@Repository
public class AdminDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//로그인
	public String login(String id, String pwd) {
		Map<String, String>map = new HashMap<String,String>();
		map.put("id", id);
		map.put("pwd", pwd);
		return sqlSessionTemplate.selectOne("mybatis.adminMapper.login", map);
	}
	
	//유저 정보
	public List<MemberDTO> user_list(int startNum, int endNum) {	
		Map<String, Integer>map = new HashMap<String,Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sqlSessionTemplate.selectList("mybatis.adminMapper.user_list",map);
	}
	
	//유저 게시글 총갯수
	public int getTotal_user() {
		return sqlSessionTemplate.selectOne("mybatis.adminMapper.getTotal_user");
	}
	
	//유저 검색/총수량
	public List<MemberDTO> search_user_list(int startNum, int endNum,String top_subject) {
		Map<Object, Object>map = new HashMap<Object,Object>();		
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		map.put("top_subject", top_subject);
		return sqlSessionTemplate.selectList("mybatis.adminMapper.search_user_list",map);
	}
		
	public int search_user_listT(String top_subject) {
		return sqlSessionTemplate.selectOne("mybatis.adminMapper.search_user_listT",top_subject);
	}
	
	public int user_delete(String id) {
		return sqlSessionTemplate.delete("mybatis.adminMapper.user_delete",id);
	}
	
}
