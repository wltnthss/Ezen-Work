package report.bean;

public class ReportDTO {
	private int re_seq;
    private String id;
	private String re_name; //회사이름
	private String re_report; //신고/문의
	private String re_check;  //신고내용 선택
	private String re_content; // 신고내용 작성
	private String logtime; //신고일
	
	public int getRe_seq() {
		return re_seq;
	}
	public void setRe_seq(int re_seq) {
		this.re_seq = re_seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRe_name() {
		return re_name;
	}
	public void setRe_name(String re_name) {
		this.re_name = re_name;
	}
	public String getRe_report() {
		return re_report;
	}
	public void setRe_report(String re_report) {
		this.re_report = re_report;
	}
	public String getRe_check() {
		return re_check;
	}
	public void setRe_check(String re_check) {
		this.re_check = re_check;
	}
	public String getRe_content() {
		return re_content;
	}
	public void setRe_content(String re_content) {
		this.re_content = re_content;
	}
	public String getLogtime() {
		return logtime;
	}
	public void setLogtime(String logtime) {
		this.logtime = logtime;
	}
	
	
}
	
	