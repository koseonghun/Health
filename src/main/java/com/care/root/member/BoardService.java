package com.care.root.member;

import java.util.List;

public interface BoardService {
	
	public void write(BoardVO vo);
	
	public List<BoardVO> boardList() throws Exception;
	
	public BoardVO detail(int list);
	
}
