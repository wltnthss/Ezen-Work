package job_exp_reply.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import job_exp_reply.bean.Job_exp_replyDTO;

@Repository
public class Job_exp_replyDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//댓글등록
	public int exp_reply_write(Job_exp_replyDTO dto) {
		return sqlSessionTemplate.insert("mybatis.job_exp_replyMapper.exp_reply_write",dto);
	}
	
	//댓글 삭제
	public int exp_reply_del(int exp_reply_seq) {
		return sqlSessionTemplate.delete("mybatis.job_exp_replyMapper.exp_reply_del",exp_reply_seq);
	}
	
	//댓글 숫자 카운트
	public int exp_reply_count(int seq) {
		return sqlSessionTemplate.update("mybatis.job_exp_replyMapper.exp_reply_count",seq);
	}
	
	//댓글 카운트 마이너스
	public int exp_reply_minus(int seq) {
		return sqlSessionTemplate.update("mybatis.job_exp_replyMapper.exp_reply_minus",seq);
	}

}
