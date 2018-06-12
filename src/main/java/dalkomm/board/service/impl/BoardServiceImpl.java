package dalkomm.board.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import dalkomm.board.dao.BoardDAO;
import dalkomm.board.service.BoardService;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	
	Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="boardDAO")
    private BoardDAO boardDAO;

	@Override
	public int insertBoard(Map<String, Object> params) {
		
		return boardDAO.insertBoard(params);
	}

	@Override
	public List<Object> getBoardList(Map<String, Object> params) {
		return boardDAO.getBoardList(params);
	}

	@Override
	public int getBoardListCnt(Map<String, Object> params) {
		return boardDAO.getBoardListCnt(params);
	}

}
