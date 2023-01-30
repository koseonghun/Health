package com.care.root.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ProjectController {

	@RequestMapping("index")
	public String home() {
		
		return "index";		
		
	}
	
	@RequestMapping("mainpage")
	public String mainpage(){
		
		return "mainpage";
	}
	
	@RequestMapping("login")
	public String login() {
		
		return "login";
	}
	
	@RequestMapping("register")
	public String register() {
		
		return "register";
	}
	
	
	@Autowired(required=false)
	UserService us;
	
	@PostMapping("registerbtn")
	public String registerbtn(UserVO vo) {
		
		us.registerbtn(vo);
		
		return "index";
	}
	
	@PostMapping("loginbtn")
	@ResponseBody
	public UserVO loginbtn(@RequestParam String id, @RequestParam String pw) {
		
		UserVO vo = new UserVO();
		
		vo.setUserid(id);
		vo.setUserpw(pw);
		
		UserVO login = us.login(vo);
		
		System.out.println("controller!!!!!!!!"+login);

		return login;
	}
	
	@PostMapping("idcheck")
	@ResponseBody
	public int idcheck(@RequestParam String id) {
		
		int idcheck = us.idcheck(id);
		
		return idcheck;
	}
	
	// board controller
	
	@RequestMapping("hun")
	public String hun() {
		return "write";
	}
	
	@Autowired(required=false)
	BoardService bs;
	
	@PostMapping("write")
	public String write(BoardVO vo) {
		
		bs.write(vo);
		
		return "mainpage";
	}

}
