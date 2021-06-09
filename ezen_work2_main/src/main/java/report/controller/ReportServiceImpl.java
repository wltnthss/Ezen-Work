package report.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import report.bean.ReportDTO;
import report.dao.ReportDAO;

@Service
public class ReportServiceImpl implements ReportService {
	@Autowired
	ReportDAO dao;
	
	
	@Override
	public int report(ReportDTO dto) {
		return dao.report(dto);
	}

	@Override
	public List<ReportDTO> reportList(int startNum, int endNum) {
		return dao.reportList(startNum, endNum);
	}

	@Override
	public int getTotal() {
		return dao.getTotal();
	}

	@Override
	public ReportDTO reportView(int re_seq) {
		return dao.reportView(re_seq);
	}
	@Override
	public int reportDelete(int re_seq) {
		return dao.reportDelete(re_seq);
	}
	
	
}
