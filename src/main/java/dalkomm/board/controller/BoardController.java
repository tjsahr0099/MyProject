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
        mv.setViewName("/board/boardList");
        return mv;
    }
	
	@RequestMapping(value="/board/boardWrite.do")
	public ModelAndView boardWrite() throws Exception{
        ModelAndView mv = new ModelAndView("");
        mv.setViewName("/board/boardWrite");
        return mv;
    }

}
