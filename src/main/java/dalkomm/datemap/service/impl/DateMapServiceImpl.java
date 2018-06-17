package dalkomm.datemap.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import dalkomm.datemap.dao.DateMapDAO;
import dalkomm.datemap.service.DateMapService;

@Service("dateMapService")
public class DateMapServiceImpl implements DateMapService{
	
	Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="dateMapDAO")
    private DateMapDAO dateMapDAO;

	@Override
	public int insertBoard(Map<String, Object> params) {
		
		return dateMapDAO.insertBoard(params);
	}

	@Override
	public List<Object> getBoardList(Map<String, Object> params) {
		return dateMapDAO.getBoardList(params);
	}

	@Override
	public int getBoardListCnt(Map<String, Object> params) {
		return dateMapDAO.getBoardListCnt(params);
	}

}
