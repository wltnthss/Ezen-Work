package resume.controller;

public interface ResumeService {
	//이력서작성
	public String write(String title, String age, String tall, String weight, String career, String achieve, String loc, String logtime);
}
