package dalkomm.card.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dalkomm.card.service.CardService;

@Controller
public class CardController {
	
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name="cardService")
    private CardService cardService;
	
	@RequestMapping(value="/card/cardList.do")
	public ModelAndView cardList() throws Exception{
        ModelAndView mv = new ModelAndView("");
        mv.setViewName("/card/cardList");
        return mv;
    }
	
	@RequestMapping(value="/card/cardCreate.do")
	public ModelAndView cardCreate() throws Exception{
        ModelAndView mv = new ModelAndView("");
        mv.setViewName("/card/cardCreate");
        return mv;
    }
	

}
