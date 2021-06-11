package report.controller;

import java.util.List;

import report.bean.ReportDTO;

public interface ReportService {

	public int report(ReportDTO dto);
	
	public List<ReportDTO> reportList(int startNum, int endNum);
	
	public int getTotal();

	public ReportDTO reportView(int re_seq);
	
	public int reportDelete(int re_seq);
}
