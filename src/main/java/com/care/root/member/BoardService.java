package com.care.root.member;

import java.util.List;

public interface BoardService {
	
	public void write(BoardVO vo);
	
	public List<BoardVO> boardList() throws Exception;
	
	public BoardVO detail(int list);
	
	public void delete(BoardVO vo);
	
	public BoardVO modify(int list);
	
	public void modify2(BoardVO vo);
	
	
}
