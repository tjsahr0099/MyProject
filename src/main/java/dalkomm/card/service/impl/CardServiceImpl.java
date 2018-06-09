package dalkomm.card.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import dalkomm.card.dao.CardDAO;
import dalkomm.card.service.CardService;

@Service("cardService")
public class CardServiceImpl implements CardService{
	
	Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="cardDAO")
    private CardDAO cardDAO;


}
