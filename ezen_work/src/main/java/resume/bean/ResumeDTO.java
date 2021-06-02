package resume.bean;

public class ResumeDTO {
	private String id;
	private int seq;			// 이력서 번호
	private String image;		// 이력서 이미지
	private String title;		// 이력서 제목
	private String age;			// 이력서 나이
	private String career;		// 이력서 경력
	private String achieve;		// 이력서 학력
	private String loc;			// 이력서 위치
	private int opencount;		// 이력서 열람수
	private String logtime;		// 이력서 작성일
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public String getAchieve() {
		return achieve;
	}
	public void setAchieve(String achieve) {
		this.achieve = achieve;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public int getOpencount() {
		return opencount;
	}
	public void setOpencount(int opencount) {
		this.opencount = opencount;
	}
	public String getLogtime() {
		return logtime;
	}
	public void setLogtime(String logtime) {
		this.logtime = logtime;
	}
	
	
}
