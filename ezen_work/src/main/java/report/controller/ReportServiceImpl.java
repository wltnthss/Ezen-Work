package report.controller;

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
	
}
