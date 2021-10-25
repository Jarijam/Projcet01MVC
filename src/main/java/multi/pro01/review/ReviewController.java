package multi.pro01.review;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReviewController { 
	@Autowired
	ReviewService service;
	
	@RequestMapping("/review/insert.do")
	
	public String insert(ReviewVO command) { 
		System.out.println("========="+command);
		
		String url = "";
		int result = service.insert(command);
		
		if (result >=1) {
			url = "redirect:/index.do";
		}else {
			url = "redirect:/pro01/review_write.do";
		}
		return url;
	}
	@RequestMapping("review.do")
	public ModelAndView getReviewList() {
		ModelAndView mav = new ModelAndView();
		List<ReviewVO> reviewlist = service.getReviewList();
		mav.setViewName("review/review");
		mav.addObject("reviewlist", reviewlist);
		return mav;
	}
//	@RequestMapping("/review/list.do")
//	public ModelAndView reviewlist(String category) {
//		System.out.println("===========>"+category);
//		ModelAndView mav = new ModelAndView("review/list");
////		List<ReviewVO> reviewlist = service.findByCategory(category);
//		//List<ReviewVO> reviewlist = service;
//		//dao에서 결과가 넘어오는 경우 디버깅 작업은 넘어오는 데이터 sysout으로 컨트롤러 단까지 모두 출력해보기
//		//tiles에 등록한 뷰의 이름
//		 mav.setViewName("review/list"); 
//		//mav.addObject("reviewlist", reviewlist);
//		//mav.addObject("category", category);
////		return mav;
//	}
	
}
