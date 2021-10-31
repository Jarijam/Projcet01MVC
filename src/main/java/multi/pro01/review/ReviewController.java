package multi.pro01.review;

import java.io.File;
import java.lang.instrument.ClassFileTransformer;
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
	 
	/*
	 * @RequestMapping("/review/insert.do") public String insert(ReviewVO command) {
	 * System.out.println("리뷰작성!"); service.insert(command);
	 * service.ratingUpdate(command.getRes_name()); return
	 * "redirect:/review/reviewlist.do"; }
	 */
	
	//리뷰수정
	@RequestMapping("/review/update.do")
	public String update(ReviewVO review_update) {
		System.out.println("연동확인"+review_update);
		service.insert(review_update, null);
		return "redirect:/review/reviewlist.do";
	}
	
	//게시글 db에 insert
	@RequestMapping(value="/review/insert.do" ,method=RequestMethod.POST)
	//@RequestMapping(value="/review/fileinsert.do" ,method=RequestMethod.POST)
	public String insert(ReviewVO review,HttpServletRequest req) throws Exception{
		System.out.println("++++++++++++++++"+review);	
		MultipartFile[] files = review.getFiles();
		System.out.println(","+review.getFiles().length);
		
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
		//service.fileinsert(review, filelist);
		service.insert(review,filelist);
		service.ratingUpdate(review.getRes_name());
		return "redirect:/review/reviewlist.do";
	}
	
	@RequestMapping("/review/reviewlist.do")
	//public ModelAndView getReviewList(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
	public ModelAndView getReviewList() {
		ModelAndView mav = new ModelAndView();
//		System.out.println("파일이름"+file.getOriginalFilename());
//		String root_path = request.getSession().getServletContext().getRealPath("/");
//		String attach_path = "resources/upload/";
//		String filename = file.getOriginalFilename();
//		
//		File f = new File(root_path + attach_path + filename);
//		try {
//			file.transferTo(f);
//		}catch (Exception e) {
//			System.out.println(e.getMessage());
//		}
		List<ReviewVO> reviewlist = service.getReviewList();
		List<ReviewFileVO> filelist = service.getFileList();
		mav.setViewName("reviewlist");
		mav.addObject("reviewlist", reviewlist);
		mav.addObject("filelist", filelist);
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
		System.out.println(review);
		mav.addObject("review", review);
		return mav;		
	}

	
}
