package report.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import report.bean.ReportDTO;

@Repository
public class ReportDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int report(ReportDTO dto) {
		return sqlSession.insert("mybatis.reportmapper.report",dto);
		
	}
	public List<ReportDTO> reportList(int startNum, int endNum) {	
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sqlSession.selectList("mybatis.reportmapper.reportList", map);
	}
	public int getTotal() {		
		return sqlSession.selectOne("mybatis.reportmapper.getTotal");
	}	
	public ReportDTO reportView(int re_req) {		
		return sqlSession.selectOne("mybatis.reportmapper.reportView", re_req);
	}	
	public int reportDelete(int re_req) {		
		return sqlSession.delete("mybatis.reportmapper.reportDelete", re_req);
	}
}
