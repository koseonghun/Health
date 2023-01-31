package com.care.root.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

@Service
@Primary
public class BoardServiceImpl implements BoardService {
	
	@Autowired(required=false)
	BoardMapper bm;
	
	@Override
	public List<BoardVO> boardList() throws Exception {

		return bm.boardList();
	}
	
	@Override
	public void write(BoardVO vo) {
		
		bm.write(vo);
	}

}
