package mainForm.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import advertise.bean.AdvertiseDTO;
import mainForm.bean.MainFormDTO;
import resume.bean.ResumeDTO;

@Repository
public class MainFormDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	//怨듦퀬�벑濡� 珥앸━�뒪�듃
	public List<AdvertiseDTO> adList(int startNum, int endNum){
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sqlSession.selectList("mybatis.mainFormMapper.adList",map);
	}
	
	// 怨듦퀬 �벑濡� 珥� �뜲�씠�꽣 媛��닔 援ы븯湲�
	public int getTotalA() {
		return sqlSession.selectOne("mybatis.mainFormMapper.getTotalA");
	}

	public AdvertiseDTO getAdInfo(String cname) {
		return sqlSession.selectOne("mybatis.mainFormMapper.getAdInfo", cname);
	}

	public AdvertiseDTO getAdView(int num) {
		return sqlSession.selectOne("mybatis.mainFormMapper.getAdView", num);
	}
	
	public ResumeDTO getresume(String id) {
		return sqlSession.selectOne("mybatis.mainFormMapper.getresume", id);
	}
	
	public String getName(int num) {
		return sqlSession.selectOne("mybatis.mainFormMapper.getName", num);
	}
	
	public int enroll(MainFormDTO dto1) {
		return sqlSession.insert("mybatis.mainFormMapper.enroll", dto1);
	}

	public List<MainFormDTO> memAdList(String id) {
		return sqlSession.selectList("mybatis.mainFormMapper.memAdList", id);
	}
}
