package report.dao;

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
}
