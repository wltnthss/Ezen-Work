package mypage.controller;

import member.bean.MemberDTO;
import mypage.bean.MypageDTO;

public interface MypageService {
	public MemberDTO getMember(String id);
}
