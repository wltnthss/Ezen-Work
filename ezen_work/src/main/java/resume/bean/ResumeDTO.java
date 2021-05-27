package resume.bean;

public class ResumeDTO {
	private String title;
	private String age;
	private String tall;
	private String weight;
	private String career;
	private String achieve;
	private String loc;
	private String logtime;
	
	public ResumeDTO() {
		super();
	}
	
	public ResumeDTO(String title, String age, String tall, String weight, String career, String achieve, String loc,
			String logtime) {
		super();
		this.title = title;
		this.age = age;
		this.tall = tall;
		this.weight = weight;
		this.career = career;
		this.achieve = achieve;
		this.loc = loc;
		this.logtime = logtime;
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

	public String getTall() {
		return tall;
	}

	public void setTall(String tall) {
		this.tall = tall;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
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

	public String getLogtime() {
		return logtime;
	}

	public void setLogtime(String logtime) {
		this.logtime = logtime;
	}

	
}
