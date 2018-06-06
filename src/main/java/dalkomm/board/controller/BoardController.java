package dalkomm.board.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	
Logger log = Logger.getLogger(this.getClass());
	
	@RequestMapping(value="/board/boardList.do")
	public ModelAndView boardList() throws Exception{
        ModelAndView mv = new ModelAndView("");
        log.debug("게시판");
        mv.setViewName("/board/boardList");
        return mv;
    }

}
