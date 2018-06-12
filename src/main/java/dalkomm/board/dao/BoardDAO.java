package dalkomm.board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dalkomm.common.dao.AbstractDAO;

@Repository("boardDAO")
public class BoardDAO extends AbstractDAO{

	public int insertBoard(Map<String, Object> params) {
		
		String seq = this.getNextSeq("BOARD_SEQ");
		if(!seq.equals("0")) {
			params.put("boardSeq", seq);
		}else {
			return 0;
		}
		
		
		return (int) insert("board.insertBoard", params);
	}

	public List<Object> getBoardList(Map<String, Object> params) {
		return selectList("board.getBoardList", params);
	}

	public int getBoardListCnt(Map<String, Object> params) {
		return (int) selectOne("board.getBoardListCnt", params);
	}

}
