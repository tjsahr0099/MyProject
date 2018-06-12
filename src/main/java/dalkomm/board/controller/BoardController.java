package dalkomm.board.controller;

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

import dalkomm.board.service.BoardService;

@Controller
public class BoardController {
	
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name="boardService")
    private BoardService boardService;
	
	@RequestMapping(value="/board/boardList.do")
	public ModelAndView boardList() throws Exception{
        ModelAndView mv = new ModelAndView("");
        mv.setViewName("/board/boardList");
        return mv;
    }
	
	@RequestMapping(value="/board/getBoardList.do")
	@ResponseBody
	public  Map<String,Object> getboardList(@RequestParam Map<String,Object> params) throws Exception{
		Map<String,Object> map = new HashMap<String,Object>();
		List<Object> list = boardService.getBoardList(params);
		int totalCnt = boardService.getBoardListCnt(params);
		map.put("list", list);
		map.put("totalCnt", totalCnt);
        return map;
    }
	
	@RequestMapping(value="/board/boardWrite.do")
	public ModelAndView boardWrite() throws Exception{
        ModelAndView mv = new ModelAndView("");
        mv.setViewName("/board/boardWrite");
        return mv;
    }
	
	@RequestMapping(value="/board/insertBoard.do")
	@ResponseBody
	public Map<String,Object> insertBoard(@RequestParam Map<String,Object> params) throws Exception{
        Map<String,Object> map = new HashMap<String,Object>();
     
     /*   //맵 전체 출력
     Iterator<String> iterator = params.keySet().iterator();
     // 반복자를 이용해서 출력
     while (iterator.hasNext()) { 
     	String key = (String)iterator.next(); // 키 얻기
     	System.out.print("key="+key+" / value="+map.get(key));  // 출력
     }
     */
        
        int result = 0;
        result = boardService.insertBoard(params);
        if(result>0) {
        	map.put("msg", "작성이 완료되었습니다.");
        	map.put("code", "S");
        }else {
        	map.put("msg", "작성에 오류가 있습니다.");
        	map.put("code", "F");
        }
        
        
        return map;
    }

}
