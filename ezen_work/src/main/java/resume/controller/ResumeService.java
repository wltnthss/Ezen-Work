package resume.controller;

import resume.bean.ResumeDTO;

public interface ResumeService {
	//이력서 작성
	public int resumeWrite(ResumeDTO dto);
}
