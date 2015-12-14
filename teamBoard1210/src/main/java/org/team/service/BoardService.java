package org.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.team.domain.BoardVO;
import org.team.persistence.BoardMapper;

@Repository
public class BoardService {
	
	@Autowired
	BoardMapper mapper;
	
	
	public List<BoardVO> list() throws Exception{
		return mapper.list();
	}
	
	public void create(BoardVO vo) throws Exception{
		mapper.create(vo);
	}
	
	public BoardVO read(int bno) throws Exception{
		return mapper.read(bno);
	}
	
	public void update(BoardVO vo) throws Exception{
		mapper.update(vo);
	}
	
	public void delete(int bno) throws Exception{
	    mapper.delete(bno);
	}

}
