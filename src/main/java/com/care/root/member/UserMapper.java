package com.care.root.member;

public interface UserMapper {
	
	public void registerbtn(UserVO vo);
	
	public UserVO login(UserVO vo);

	public int idcheck(String id);
	
}