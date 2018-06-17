package dalkomm.datemap.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dalkomm.datemap.service.DateMapService;

@Controller
public class DateMapController {
	
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name="dateMapService")
    private DateMapService dateMapService;
	
	@RequestMapping(value="/dateMap/dateMap.do")
	public ModelAndView boardList() throws Exception{
        ModelAndView mv = new ModelAndView("");
        mv.setViewName("/dateMap/dateMap");
        return mv;
    }	

}
