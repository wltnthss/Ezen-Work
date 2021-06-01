package advertise.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import advertise.bean.AdvertiseDTO;

@Repository
public class AdvertiseDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int advertiseWrite(AdvertiseDTO dto) {
		return sqlSession.insert("mybatis.advertiseMapper.advertiseWrite", dto);
	}
	//공고 수정
	public int advertiseModify(AdvertiseDTO dto) {		
		return sqlSession.update("mybatis.advertiseMapper.advertiseModify", dto);	
	}
	// 목록보기 : select
	public List<AdvertiseDTO> advertiseList(int startNum, int endNum) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sqlSession.selectList("mybatis.advertiseMapper.advertiseList",map);
	}	
	// 상세보기 : select
	public AdvertiseDTO advertiseView(int num) {
		return sqlSession.selectOne("mybatis.advertiseMapper.advertiseView",num);
	}	
	// 총 데이터 갯수 구하기
	public int getTotalA() {
		return sqlSession.selectOne("mybatis.advertiseMapper.getTotalA");
	}	
	// 글삭제 : delete
	public int advertiseDelete(int num) {
		return sqlSession.delete("mybatis.advertiseMapper.advertiseDelete",num);
	}
}
