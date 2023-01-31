package com.care.root.member;

import java.util.List;

public interface BoardMapper {
	
	public void write(BoardVO vo);
	
	public List<BoardVO> boardList();
	
}
