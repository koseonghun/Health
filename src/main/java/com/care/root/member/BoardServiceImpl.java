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
	public void write(BoardVO  vo) {
		
		bm.write(vo);
	}
	
	@Override
	public BoardVO detail(int list) {
		
		return bm.detail(list);
	}
	
	@Override
	public void delete(BoardVO vo) {
		
		bm.delete(vo);
	}
	
	@Override
	public BoardVO modify(int list) {
		
		return bm.modify(list);
	}
	
	@Override
	public void modify2(BoardVO vo) {
		
		bm.modify2(vo);
	}

}
