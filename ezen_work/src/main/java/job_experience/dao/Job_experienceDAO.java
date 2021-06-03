package job_experience.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import job_exp_reply.bean.Job_exp_replyDTO;
import job_experience.bean.Job_experienceDTO;
@Repository
public class Job_experienceDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//알바경험담 글쓰기
	public int exp_write(Job_experienceDTO dto) {		
		return sqlSessionTemplate.insert("mybatis.job_experienceMapper.exp_write", dto);
	}
	
	//알바경험담 목록보기
	public List<Job_experienceDTO> exp_list(int startNum, int endNum){
		Map<String, Integer>map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sqlSessionTemplate.selectList("mybatis.job_experienceMapper.exp_list",map);
	}
	
	//알바경험담 총페이지 구하기
	public int exp_getTotalA() {
		return sqlSessionTemplate.selectOne("mybatis.job_experienceMapper.exp_getTotalA");
	}
	
	//알바경험담 검색 구하기
	public List<Job_experienceDTO> exp_search(String search) {
		return sqlSessionTemplate.selectList("mybatis.job_experienceMapper.exp_search",search);
	}
	
	public int exp_search_total(String search) {
		return sqlSessionTemplate.selectOne("mybatis.job_experienceMapper.exp_search_total",search);
	}
	
	public Job_experienceDTO exp_view(int seq) {
		return sqlSessionTemplate.selectOne("mybatis.job_experienceMapper.exp_view",seq);
	}
	
	public int exp_hit(int seq) {
		return sqlSessionTemplate.update("mybatis.job_experienceMapper.exp_hit",seq);
	}	
	
	public int exp_modify(Job_experienceDTO dto) {
		return sqlSessionTemplate.update("mybatis.job_experienceMapper.exp_modify",dto);
	}
	
	public int exp_del(int seq) {
		return sqlSessionTemplate.delete("mybatis.job_experienceMapper.exp_del",seq);
	}
	
	public List<Job_exp_replyDTO> exp_reply_list(int seq) {
		return sqlSessionTemplate.selectList("mybatis.job_experienceMapper.exp_reply_list",seq);
	}
	
	public int exp_reply_del(int seq) {
		return sqlSessionTemplate.delete("mybatis.job_experienceMapper.exp_reply_del",seq);
	}
	

}
