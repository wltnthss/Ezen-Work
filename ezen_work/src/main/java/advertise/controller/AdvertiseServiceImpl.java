package advertise.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import advertise.bean.AdvertiseDTO;
import advertise.dao.AdvertiseDAO;

@Service
public class AdvertiseServiceImpl implements AdvertiseService{
	@Autowired
	AdvertiseDAO dao;
	
	@Override
	public int advertiseWrite(AdvertiseDTO dto) {
		return dao.advertiseWrite(dto);
	}
}
