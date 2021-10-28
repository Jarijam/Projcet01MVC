package multi.pro01.review;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

@Controller
public class ReviewController { 
	@Autowired
	ReviewService service;
	@Autowired
	FileUploadLogic uploadservice;
	
	@RequestMapping("/review/insert.do")
	public String insert(ReviewVO command) { 
		System.out.println("리뷰작성!");
		service.insert(command);
		service.ratingUpdate(command.getUserid());
		return "redirect:/review/reviewlist.do";
	}
	
	//게시글 db에 insert
	@RequestMapping(value="/review/fileinsert.do" ,method=RequestMethod.POST)
	public String write(ReviewVO review,HttpServletRequest req) throws Exception{
		System.out.println(review);	
		System.out.println(","+review.getFiles().length);
		MultipartFile[] files = review.getFiles();
		
		//2. 저장될 위치
		String path = 
			WebUtils.getRealPath(req.getSession().getServletContext(),
							"/WEB-INF/upload");
		ArrayList<String> filelist = new ArrayList<String>();
		for (int i = 0; i < files.length; i++) {
			String fileName = files[i].getOriginalFilename();
			if(fileName.length()!=0) {
				filelist.add(fileName);
				System.out.println("file:"+fileName);
				uploadservice.upload(files[i], path, fileName);
			}
		}
		service.insert(review, filelist);
		return "redirect:/board/list.do";
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
