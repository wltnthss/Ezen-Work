package mypage.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import member.bean.MemberDTO;

@Repository
public class MypageDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	// 회원1명 데이터 확인
	public MemberDTO getMember(String id) {
		return sqlSession.selectOne("mybatis.memberMapper.getMember", id);
	}
}
