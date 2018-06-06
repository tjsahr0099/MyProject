package dalkomm.main.controller;

import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	Logger log = Logger.getLogger(this.getClass());
	
	@RequestMapping(value="/main.do")
    public ModelAndView main(String aaa,String bbb) throws Exception{
        ModelAndView mv = new ModelAndView("");
        log.debug("메인페이지");
        log.debug(aaa);
        log.debug(bbb);
        mv.setViewName("home");
        return mv;
    }
	
	@RequestMapping(value="/mainJson.do", produces="application/json;charset=UTF-8")
	@ResponseBody
    public Map<String,Object> mainJson(String aaa,String bbb) throws Exception{
		Map<String,Object> map = new HashMap<String,Object>();
        log.debug("메인페이지_mainJson");
        map.put("aaa", aaa);
        map.put("bbb", bbb);
        return map;
    }
}
