package com.care.root.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ProjectController {

	@RequestMapping("index")
	public String home() {
		
		return "index";		
		
	}
	
	@RequestMapping("login")
	public String login() {
		System.out.println("-sdgadga여기타느거임!!");
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
	
	// ----------------board controller
	
	
	@Autowired(required=false)
	BoardService bs;
	
	@RequestMapping(value="mainpage", method=RequestMethod.GET)
	public String mainpage(Model model) throws Exception{
		
		List<BoardVO> boardList= bs.boardList();
		
		model.addAttribute("boardList", boardList);
		return "mainpage";
	}
	
	@RequestMapping("hun")
	public String hun() {
		return "write";
	}
	
	@PostMapping("write")
	public String write(BoardVO vo) {
		
		bs.write(vo);
		
		return "redirect:mainpage";
	}
	
	@RequestMapping(value="detail", method=RequestMethod.GET)
	public String detail(Model model,int list) {
		
		System.out.println("여기야!!!!!!!!!!!"+list);
		BoardVO detail = bs.detail(list);
		model.addAttribute("detail",detail);
		
		
		return "detail";
	}
	
	@RequestMapping(value="delete",method=RequestMethod.GET)
	public String delete(BoardVO vo,int list) {
		
		System.out.println("list==================="+list);
		
		bs.delete(vo);
		return "redirect:mainpage";
	}
	
	@RequestMapping(value="modify",method=RequestMethod.GET)
	public String modify(Model model, int list) {
		
		BoardVO modify = bs.modify(list);
		model.addAttribute("modify",modify);
		
		return "modify";
	}
	
	@PostMapping("modifybtn")
	@ResponseBody
	public String modifybtn(@RequestParam String title, @RequestParam String content, @RequestParam int list) {
		
		BoardVO vo = new BoardVO();
		vo.setTitle(title);
		vo.setContent(content);
		vo.setList(list);
		
		bs.modifybtn(vo);
		
		System.out.println("제목!!!!!!!!!!!!!"+title);
		System.out.println("내용!!!!!!!!!!!!!"+content);
		System.out.println("순번!!!!!!!!!!!!!!!"+list);
		
		return "result";
	}

}
