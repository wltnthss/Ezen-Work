package mainForm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import advertise.bean.AdvertiseDTO;
import mainForm.bean.MainFormDTO;
import mainForm.dao.MainFormDAO;
import resume.bean.ResumeDTO;

@Service
public class MainFormServiceImpl implements MainFormService{
	
	@Autowired
	MainFormDAO dao;

	@Override
	public List<AdvertiseDTO> adList(int startNum, int endNum) {
		return dao.adList(startNum,endNum);
	}

	@Override
	public int getTotalA() {
		return dao.getTotalA();
	}

	@Override
	public AdvertiseDTO getAdInfo(String cname) {
		return dao.getAdInfo(cname);
	}

	@Override
	public AdvertiseDTO getAdView(int num) {
		return dao.getAdView(num);
	}
	
	@Override
	public ResumeDTO getresume(String id) {
		return dao.getresume(id);
	}
	
	@Override
	public String getName(int num) {
		return dao.getName(num);
	}

	@Override
	public int enroll(MainFormDTO dto1) {		
		return dao.enroll(dto1);
	}

	@Override
	public List<MainFormDTO> memAdList(String id) {
		return dao.memAdList(id);
	}
	
	
	
}
