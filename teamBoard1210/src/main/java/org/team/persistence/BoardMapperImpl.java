package org.team.persistence;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.team.domain.BoardVO;

@Repository
public class BoardMapperImpl extends AbstractCRUDMapper<BoardVO, Integer> implements BoardMapper {


	@Override
	public List<BoardVO> list() {
		return session.selectList(namespace+".list");
	}

}
