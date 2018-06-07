package dalkomm.board.dao;

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

}
