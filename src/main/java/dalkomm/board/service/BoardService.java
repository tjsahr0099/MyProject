package dalkomm.board.service;

import java.util.List;
import java.util.Map;

public interface BoardService {

	int insertBoard(Map<String, Object> params);

	List<Object> getBoardList(Map<String, Object> params);

	int getBoardListCnt(Map<String, Object> params);

}
