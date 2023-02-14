package com.care.root.member;

import java.util.List;

public interface BoardMapper {
	
	public void write(BoardVO vo);
	
	public List<BoardVO> boardList();
	
	public BoardVO detail(int list);
	
	public void delete(BoardVO vo);
	
	public BoardVO modify(int list);
	
	public void modifybtn(BoardVO vo);
	
}
