package multi.pro01.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReviewController { 
	@Autowired
	ReviewService service;
	
	@RequestMapping("/review/insert.do")
	public String insert(ReviewVO command) { 
		System.out.println("리뷰작성!");
		service.insert(command);
		service.ratingUpdate(command.getUserid());
		return "redirect:/review/reviewlist.do";
	}
	@RequestMapping("/review/reviewlist.do")
	public ModelAndView getReviewList() {
		ModelAndView mav = new ModelAndView();
		List<ReviewVO> reviewlist = service.getReviewList();
		mav.setViewName("reviewlist");
		mav.addObject("reviewlist", reviewlist);
		return mav;
	}
	
	@RequestMapping(value = "/review/read.do")
	public ModelAndView read(String review_no, String state) {
		System.out.println("read controller,"+review_no+","+state);
		ModelAndView mav = new ModelAndView();
		ReviewVO review = service.read(review_no);
		String viewName="";
		if(state.equals("READ")) {
			viewName="review/read";
		}else {
			viewName="review/update";
		}
		mav.setViewName(viewName);
		mav.addObject("review", review);
		return mav;
		
	}

	
}
