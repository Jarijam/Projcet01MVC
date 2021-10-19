package multi.pro01.restaurant;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RestaurantController {
	@Autowired
	RestaurantService service;
	
	@RequestMapping("/board/insert.do")
	public ModelAndView boardlist(String category) {
		System.out.println("====="+category);
		ModelAndView mav = new ModelAndView();
		List<RestaurantVO> boardlist = service.findByCategory(category);
		//dao에서 결과가 넘어오는 경우 디버깅 작업은 넘어오는 데이터를 sysout으로 컨트롤러 단까지 모두 출력해보기	
		System.out.println(boardlist);
		mav.addObject("boardlist", boardlist);
		mav.addObject("category", category);
		return mav;
	}
}
