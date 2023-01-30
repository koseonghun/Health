package com.care.root.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

@Service
@Primary
public class BoardServiceImpl implements BoardService {
	
	@Autowired(required=false)
	BoardMapper bm;
	
	@Override
	public void write(BoardVO vo) {
		
		bm.write(vo);
	}

}
