package com.care.root.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

@Primary
@Service
public class UserServiceImpl implements UserService {

	@Autowired(required=false)
	UserMapper um;
	
	@Override
	public void registerbtn(UserVO vo) {
		System.out.println(vo.getUserid());
		System.out.println(vo.getUserpw());
		System.out.println(vo.getUsername());
		
		um.registerbtn(vo);
	}

	@Override
	public UserVO login(UserVO vo) {
		
		System.out.println(vo.getUserid());
		System.out.println(vo.getUserpw());
		
		return um.login(vo);
	
	}
	
	@Override
	public int idcheck(String id) {
		
		System.out.println("impl!"+id);
		
		return um.idcheck(id);
	}
}

