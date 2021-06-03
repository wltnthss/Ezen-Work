package mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;

import member.bean.MemberDTO;
import mypage.bean.MypageDTO;
import mypage.dao.MypageDAO;

public class MypageServiceImpl implements MypageService{

	@Autowired
	MypageDAO dao;
	
	@Override
	public MemberDTO getMember(String id) {
		return dao.getMember(id);
	}
	
}
